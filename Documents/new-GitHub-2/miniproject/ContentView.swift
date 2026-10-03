//
//  ContentView.swift
//  miniproject
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Circle()
                    .foregroundStyle(.blue.opacity(0.2))
                    .padding(.top,-365)
                    .frame(width: 400,height:300)
                    
                    
                
                   
                    
                VStack (spacing:12){
                    Image("Education-rafiki")
                        .resizable()
                        .scaledToFit()
                        .frame(width:500 ,height:500)
                        .ignoresSafeArea()
                    
                    
                    Text("Welcome To our home page ")
                        .multilineTextAlignment(.center)
                        .font(.system(size:25,weight:.semibold))
                        .foregroundStyle(.blue)
                    
                    Text("Start your journey with us")
                        .font(.system(size:21,weight:.bold))
                    
                    
                    HStack(spacing:55){
                         NavigationLink(destination:login_page()){
                        Text("Login")
                            .font(.system(size:20,weight:.bold))
                            .foregroundStyle(.white)
                            .frame(width:130,height:55)
                            .background(.blue)
                            .cornerRadius(12)
                            
                    }
                        Text("Register")
                            .font(.system(size:20,weight:.bold))
                            .foregroundStyle(.black)
                            .frame(width:130,height:55)
                            .background(.white)
                            .cornerRadius(12)
                        
                        
                        
                    }.padding(.top,120)
                }.padding(.bottom,180)
            }
        }
    }
}

#Preview {
    ContentView()
}
