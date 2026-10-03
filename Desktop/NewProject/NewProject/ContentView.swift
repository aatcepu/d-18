//
//  ContentView.swift
//  NewProject
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("Login")
                    .foregroundStyle(.black)
                
                    .bold()
                    .italic()
                    .font(.system(size:35, weight: .semibold, design: .serif))
                
                HStack(spacing: 20){
                    Image(systemName: "person.fill")
                        .foregroundStyle(.black)
                        .padding(.leading)
                    
                    TextField("username", text:
                                $username)
                    
                }
                .frame(width: 300, height: 55)
                .background(.gray.opacity(0.3))
                .cornerRadius(15)
                HStack(spacing:20){
                    Image(systemName: "key.fill")
                        .foregroundStyle(.black)
                        .padding(.leading)
                    SecureField("password", text: $password)
                }
                .frame(width: 300, height: 55)
                .background(.gray.opacity(0.3))
                .cornerRadius(15)
                
                Text("Forget password")
                    .foregroundStyle(Color(.black))
                    .bold()
                    .padding(.leading,140)
                
                NavigationLink(destination: Welcome_page()){
                    
                    Text("Login")
                        .foregroundStyle(.white)
                        .bold()
                        .frame(width: 300, height: 55)
                    
                        .background(Color(.black))
                        .cornerRadius(20)
                }
                
                HStack{
                    
                    Text("Or")
                        .foregroundStyle(.gray)
                    
                }
                HStack{
                    Image("Google")
                    
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                    
                    Text("Continue with Google")
                        .padding(.trailing)
                }
                .frame(width: 300, height: 55)
                .background(.blue)
                .backgroundStyle(.white)
                .bold()
                .cornerRadius(15)
                
                HStack{
                    Image("Facebook")
                    
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding()
                    
                    Text("Continue with Facebook")
                        .padding(.trailing)
                }
                .frame(width: 300, height: 55)
                .background(.blue)
                .backgroundStyle(.black)
                .bold()
                .cornerRadius(15)
            }
            .padding(.bottom, 150)
            }
        }
    }
var line: some View{
    VStack{
        Divider()
    }
}



#Preview {
    ContentView()
}
