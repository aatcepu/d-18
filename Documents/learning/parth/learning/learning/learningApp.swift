//
//  learningApp.swift
//  learning
//
//  Created by Student on 29/08/26.
//

import SwiftUI

@main
struct learningApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: learningDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
