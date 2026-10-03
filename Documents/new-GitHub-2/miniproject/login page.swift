//
//  login page.swift
//  miniproject
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct login_page: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack(spacing:22){
                Text("Login here")
                    .font(.system(size:39,weight:.bold))
                    .foregroundStyle(.blue)
                    .multilineTextAlignment(.center)
                
                Text("Welcome back you have been missed ")
                    .font(.system(size:20,weight:.bold))
                    .multilineTextAlignment(.center)
                
                HStack{
                    Image(systemName: "person.fill")

                    TextField("Email",text: $email)
                }.frame(width:350,height:60)
                    .background(.blue.opacity(0.03))
                    .cornerRadius(12)
            
                HStack{
                    Image(systemName: "person.badge.key.fill")

                    SecureField("password",text: $password)
                    
                }.frame(width:350,height:60)
                    .background(.blue.opacity(0.03))
                    .cornerRadius(12)
            
                
                NavigationLink(destination:signin()){
                    Text("Login ")
                        .font(.system(size:20,weight:.bold))
                        .foregroundStyle(.white)
                        .frame(width:360,height:40)
                        .background(.blue)
                        .cornerRadius(12)
                }
                NavigationLink(destination:newacc()){
                    Text("Create new Account")
                        .font(.system(size:20,weight:.bold))
                        .foregroundStyle(.black)
                        .frame(width:360,height:40)
               
                }
                Text("Or connect with us")
                    .foregroundStyle(.black)
                
                HStack{
                    
                    
                }
                
                
                
            }.padding(.bottom,250)
        }
    }
}

#Preview {
    login_page()
}
