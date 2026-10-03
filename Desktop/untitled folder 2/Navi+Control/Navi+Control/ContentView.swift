//
//  ContentView.swift
//  Navi+Control
//
//  Created by student on 30/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var movetoNext: Bool = false
    var body: some View {
        
        NavigationStack {
            VStack {
                Button{
                    movetoNext = true
                }label: {
                    Text("Go next Page")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .frame(width: 200 , height: 100)
                        .background(.green)
                        .fontDesign(.rounded)
                        .cornerRadius(34)
//                        .clipShape(RoundedRectangle(cornerRadius: 43))
                        
                        
                        
                    }
                .navigationDestination(isPresented: $movetoNext){
                    nextpage()
                }

                    
                
            }
        }
    }
}

#Preview {
    ContentView()
}
