//
//  ContentView.swift
//  Studyapp
//
//  Created by general on 26/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var Gotohome:Bool = false
    @State private var email1 = "Sudhanshurout34@gmail.com"
    @State private var password1 = "somexe@34"
    var body: some View {
        NavigationStack{
            ZStack {
                Image(.html)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x:100, y:300)
                    .opacity(0.08)
                Image(.python)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x:100, y:-200)
                    .opacity(0.08)
                Image(.swift)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .offset(x:-100, y:50)
                    .opacity(0.08)
                VStack(spacing: 20){
                    Text("Phone companies")
                        .font(.system(size: 25))
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .shadow(radius: 20)
                    HStack{
                        TextField("Email or Phone Number", text: $email)
                            .padding()
                        Image(systemName: "person.fill")
                            .foregroundStyle(.gray)
                            .padding()
                    } .frame(width: 350, height: 60)
                        .background(.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                    HStack{
                        SecureField("Password", text: $password)
                            .padding()
                        Image(systemName: "key.fill")
                            .foregroundStyle(.gray)
                            .padding()
                    } .frame(width: 350, height: 60)
                        .background(.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                    
                    Button{
                        if email == email1 && password == password1{
                            Gotohome = true
                        } else {
                            print("Username or Password is incorrect")
                        }
                        email = ""
                        password = ""
                        
                    }label: {
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(width: 350, height: 60)
                            .background(.black)
                            .cornerRadius(15)
                        
                    }
                    HStack
                    {
                        Text("Don't have an account?")
                            .foregroundStyle(.gray)
                            .fontWeight(.semibold)
                        
                        Button{
                            
                        }label: {
                            Text("Signup")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                        }
                    }
                }
                
            }
            .navigationDestination(isPresented: $Gotohome){
                HomePage()
            }
        }
    }
}
    
#Preview {
    ContentView()
}


