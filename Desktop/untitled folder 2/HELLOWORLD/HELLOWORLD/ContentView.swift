//
//  ContentView.swift
//  HELLOWORLD
//
//  Created by student on 29/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        
        ZStack { //layoutcontainer :there are 3 layoutcontainer VStack ,HStack (Horizontal) and ZStack(z index)
            //            Text("Welcome to IOS 26")
            //                .font(.system(size: 40))
            //                .fontWeight(.semibold)
            //                .fontDesign(.rounded)
            //                .foregroundStyle(LinearGradient(colors: [.red , .blue], startPoint: .leading, endPoint: .trailing))
            ////                .offset(x: 0, y: -200)
            //                .frame(width:500, height: 200)
            //                .background(Color(.systemGray6))
            //                .shadow(radius: 100)
            
            Image(.readingComicsCuate)
                .resizable()
                .scaledToFit()
//                .frame(width: 900, height: 900)
                .opacity(1)
            
//            VStack{
//                Text("lets be h̤appy")
//                    .font(.system(size: 40))
//                                    .fontWeight(.semibold)
//                                    .fontDesign(.rounded)
//                                    .foregroundStyle(LinearGradient(colors: [.pink , .purple], startPoint: .leading, endPoint: .trailing))
//                                    .offset(x:0 , y:200)
//            }
            TextField("Enter username", text: $email)
                .textFieldStyle(.roundedBorder) // Adds a clean border
        
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
