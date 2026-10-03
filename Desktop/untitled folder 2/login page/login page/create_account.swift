//
//  create_account.swift
//  login page
//
//  Created by Student on 01/07/26.
//

import SwiftUI

struct create_account: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State var showPass : Bool = false
    var body: some View {
        NavigationStack{
            
        VStack{
            
            Text("Login")
                .fontDesign(.rounded)
//                .font(.bold , )
                .font(.largeTitle)
            HStack{
                Image (systemName: "person.circle.fill")
                    .padding()
                    .foregroundStyle(.gray)
                
                TextField("Email" , text: $email)

                    
                   
                    
                
                
            }.frame(width: 350 , height: 50)
            .background(Color(.systemGray5))
            .cornerRadius(20)
            
            HStack{
                
            Image (systemName: "key.fill")
                .padding()
                .foregroundStyle(.gray)
            
            
            if showPass {
            TextField("Show Password", text: $password)
            }
            else{
                SecureField ("Password", text: $password)
            }
                Button{
                    showPass.toggle()
                }label:{
                    Image(systemName: showPass ? "eye.slash.circle" : "eye.circle")
                }.padding()
                
                
            }
            .frame(width: 350 , height: 50)
            .background(Color(.systemGray5))
            .cornerRadius(20)
            
            Button{
                
            }label:{
                Text("Login")
            }.frame(width: 300 , height: 50)
                .foregroundStyle(.white)
                .background(.emailbtn)
                .cornerRadius(30)
            //                    .foregroundStyle(Color(.black))
                .shadow(radius: 2)
        }
        
        }
    }
}

#Preview {
    create_account()
}
