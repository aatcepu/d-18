//
//  ContentView.swift
//  priya
//
//  Created by Student on 19/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("Image")
                    .offset(y:-100)
                    .ignoresSafeArea()
                
                
                Text("Wherever You Are \n Health ")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
                    .padding()
                Text("There is no instant way to a healthy life")
                    .padding()
                
                Image("carousel")
                    .padding()
                Button{
                }label:{
                    Text("Get Started")
                        .frame(width: 250, height: 50)
                        .background(.green)
                        .foregroundStyle(.white)
                }
            }
        }
        
        .padding(.bottom, 20)
    }
}
#Preview {
    ContentView()
}
