//
//  ContentView.swift
//  Firstproject
//
//  Created by Student on 30/07/26.
//

import SwiftUI

    
    struct ContentView:View{
        @State private var email = ""
        @State private var password = ""
        @State private var message = ""
        
        var body : some View {
            VStack(spacing: 20){
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                SecureField("Enter Password", text:$password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button("Submit"){
                    if isValidEmail(email)&&password.count >= 6{
                        message = "Valid Input"
                    }else{
                        message = "Invalid Input"
                    }
                }
                Text(message)
            }
            .padding()
        }
        
            func isValidEmail(_email:String) -> Bool {
                return email.contains("@") && email.contains(".")
            }
        }


