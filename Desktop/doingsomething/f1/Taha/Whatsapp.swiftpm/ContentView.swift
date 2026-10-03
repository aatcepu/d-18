import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Sudhansu rout ")
                .bold()
        }       .underline()
            .foregroundStyle(.blue)
            .background(.yellow.opacity(0.5))
            .font(.system(size:35,
                          weight: .semibold,
                          design: .monospaced
                       ))
    }
}
