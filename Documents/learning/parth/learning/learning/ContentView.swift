//
//  ContentView.swift
//  learning
//
//  Created by Student on 29/08/26.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: learningDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(learningDocument()))
}
