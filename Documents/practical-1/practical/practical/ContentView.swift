import SwiftUI
struct ContentView: View {
@State private var progress = 0.0
var body: some View {
VStack(spacing: 20) {
Text("Loading...")
.font(.title)
ProgressView(value: progress)
Button("Start Loading") {
startLoading()
}
}
.padding()
}
func startLoading() {
progress = 0.0
Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
progress += 0.05
    if progress >= 1.0 {
    timer.invalidate()
    }
    }
    }
    }
    
#Preview {
    ContentView()
}
