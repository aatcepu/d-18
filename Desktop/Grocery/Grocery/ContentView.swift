//
//  ContentView.swift
//  Grocery
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("onbording")
                    .ignoresSafeArea()
                
                Button{
                    
                }label: {
                    
                    NavigationLink(destination: Nextpage()){
                        
                        Text("Get started")
                            .foregroundStyle(.white)
                            .frame(width: 350, height: 60)
                            .background(.green)
                            .cornerRadius(20)
                            .padding(.top, 640)
                    }
                    
                }
                
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
