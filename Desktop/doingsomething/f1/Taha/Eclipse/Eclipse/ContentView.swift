//
//  ContentView.swift
//  Eclipse
//
//  Created by Student on 25/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Button")
                .background(.yellow)
                .frame(width: 300, height: 60)
                .foregroundStyle(.white)
                .cornerRadius(20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
