import SwiftUI
import SceneKit
import CoreLocation

struct ContentView: View {

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            EarthView()
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("EARTH")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .tracking(8)
                    .foregroundStyle(.white)

                Text("LIVE SOLAR ILLUMINATION")
                    .font(.system(size: 11, weight: .medium, design: .monospaced))
                    .tracking(2)
                    .foregroundStyle(.white.opacity(0.5))
                    .padding(.top, 4)

                Spacer()
                    .frame(height: 35)
            }
        }
    }
}


// MARK: - SwiftUI → SceneKit bridge

struct EarthView: UIViewRepresentable {

    func makeUIView(context: Context) -> SCNView {

        let view = SCNView()

        view.backgroundColor = .black

        view.allowsCameraControl = true

        view.autoenablesDefaultLighting = false

        view.rendersContinuously = true

        let scene = SCNScene()

        view.scene = scene

        // ------------------------------------------------------------
        // CAMERA
        // ------------------------------------------------------------

        let cameraNode = SCNNode()

        let camera = SCNCamera()

        camera.fieldOfView = 42

        cameraNode.camera = camera

        cameraNode.position = SCNVector3(
            0,
            0,
            3.1
        )

        scene.rootNode.addChildNode(cameraNode)


        // ------------------------------------------------------------
        // EARTH
        // ------------------------------------------------------------

        let earth = SCNSphere(radius: 1.0)

        earth.segmentCount = 160

        let earthNode = SCNNode(
            geometry: earth
        )

        // NASA Blue Marble
        let material = SCNMaterial()

        material.diffuse.contents =
            UIImage(
                named: "earth"
            )

        material.specular.contents =
            UIColor.white.withAlphaComponent(0.08)

        material.shininess = 12

        material.lightingModel =
            .physicallyBased

        earth.materials = [material]

        scene.rootNode.addChildNode(earthNode)


        // ------------------------------------------------------------
        // ATMOSPHERE
        // ------------------------------------------------------------

        let atmosphere =
            SCNSphere(radius: 1.025)

        let atmosphereMaterial =
            SCNMaterial()

        atmosphereMaterial.diffuse.contents =
            UIColor.clear

        atmosphereMaterial.emission.contents =
            UIColor(
                red: 0.1,
                green: 0.45,
                blue: 1.0,
                alpha: 0.12
            )

        atmosphereMaterial.transparent.contents =
            UIColor(
                white: 1,
                alpha: 0.15
            )

        atmosphereMaterial.blendMode = .add

        atmosphereMaterial.isDoubleSided = true

        atmosphereMaterial.lightingModel = .constant

        atmosphere.materials =
            [atmosphereMaterial]

        let atmosphereNode =
            SCNNode(
                geometry: atmosphere
            )

        scene.rootNode.addChildNode(
            atmosphereNode
        )


        // ------------------------------------------------------------
        // SUN
        // ------------------------------------------------------------

        let sunNode = SCNNode()

        let sun = SCNLight()

        sun.type = .directional

        sun.color = UIColor(
            white: 1.0,
            alpha: 1
        )

        sun.intensity = 1800

        sun.castsShadow = true

        sunNode.light = sun

        scene.rootNode.addChildNode(
            sunNode
        )


        // ------------------------------------------------------------
        // SMALL AMBIENT LIGHT
        // ------------------------------------------------------------

        let ambientNode = SCNNode()

        let ambient = SCNLight()

        ambient.type = .ambient

        ambient.color = UIColor(
            red: 0.04,
            green: 0.07,
            blue: 0.12,
            alpha: 1
        )

        ambient.intensity = 120

        ambientNode.light = ambient

        scene.rootNode.addChildNode(
            ambientNode
        )


        // ------------------------------------------------------------
        // CONTINUOUS EARTH ROTATION
        // ------------------------------------------------------------

        let rotation = SCNAction.rotateBy(
            x: 0,
            y: CGFloat.pi * 2,
            z: 0,
            duration: 60
        )

        earthNode.runAction(
            SCNAction.repeatForever(rotation)
        )

        // Atmosphere follows Earth
        atmosphereNode.runAction(
            SCNAction.repeatForever(
                SCNAction.rotateBy(
                    x: 0,
                    y: CGFloat.pi * 2,
                    z: 0,
                    duration: 60
                )
            )
        )


        // ------------------------------------------------------------
        // UPDATE SUN POSITION
        // ------------------------------------------------------------

        Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: true
        ) { _ in

            updateSun(
                sunNode: sunNode
            )
        }

        updateSun(
            sunNode: sunNode
        )

        return view
    }


    func updateUIView(
        _ uiView: UIView,
        context: Context
    ) {}
}


// MARK: - Sun Position

func updateSun(
    sunNode: SCNNode
) {

    let now = Date()

    let calendar =
        Calendar(identifier: .gregorian)

    let components =
        calendar.dateComponents(
            [
                .year,
                .month,
                .day,
                .hour,
                .minute,
                .second
            ],
            from: now
        )

    guard
        let year = components.year,
        let month = components.month,
        let day = components.day,
        let hour = components.hour,
        let minute = components.minute,
        let second = components.second
    else {
        return
    }

    // ------------------------------------------------------------
    // Julian Date
    // ------------------------------------------------------------

    var y = Double(year)

    var m = Double(month)

    if m <= 2 {

        y -= 1
        m += 12
    }

    let A = floor(y / 100)

    let B =
        2 -
        A +
        floor(A / 4)

    let JD =
        floor(365.25 * (y + 4716))
        +
        floor(30.6001 * (m + 1))
        +
        Double(day)
        +
        B
        -
        1524.5
        +
        (
            Double(hour)
            +
            Double(minute) / 60
            +
            Double(second) / 3600
        ) / 24


    // ------------------------------------------------------------
    // Solar calculations
    // ------------------------------------------------------------

    let n =
        JD - 2451545.0

    let longitude =
        280.460
        +
        0.9856474 * n

    let anomaly =
        357.528
        +
        0.9856003 * n

    let M =
        anomaly * .pi / 180

    let lambda =
        longitude
        +
        1.915 * sin(M)
        +
        0.020 * sin(2 * M)

    let lambdaRad =
        lambda * .pi / 180

    let obliquity =
        (23.439 - 0.0000004 * n)
        * .pi / 180


    // Sun declination
    let declination =
        asin(
            sin(obliquity)
            *
            sin(lambdaRad)
        )


    // Greenwich Mean Sidereal Time

    let GMST =
        280.46061837
        +
        360.98564736629
        *
        (JD - 2451545.0)

    let theta =
        GMST * .pi / 180


    // Sun longitude relative to Earth

    let sunX =
        cos(declination)
        *
        cos(theta)

    let sunY =
        sin(declination)

    let sunZ =
        cos(declination)
        *
        sin(theta)


    // ------------------------------------------------------------
    // Put Sun around the Earth
    // ------------------------------------------------------------

    let distance: Float = 10

    sunNode.position =
        SCNVector3(
            Float(sunX) * distance,
            Float(sunY) * distance,
            Float(sunZ) * distance
        )

    // Directional lights shine along their
    // local -Z direction.

    sunNode.look(
        at: SCNVector3Zero
    )
}               
