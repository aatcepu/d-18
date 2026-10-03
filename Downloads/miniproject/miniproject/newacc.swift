//
//  newacc.swift
//  miniproject
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct newacc: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    var body: some View {
        NavigationStack{
            VStack(spacing:30){
                Text("Create a new Account")
                    .font(.system(size:34,weight:.bold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.blue)
                
                
                Text(" So you can explore our page")
                    .font(.system(size:15,weight:.bold))
                    .multilineTextAlignment(.center)
                
                
                HStack{
                    Image(systemName: "person.fill")
                    
                    TextField("Email",text: $email)
                }.frame(width:350,height:60)
                    .background(.blue.opacity(0.03))
                
                HStack{
                    Image(systemName: "person.badge.key.fill")
                    
                    SecureField("password",text: $password)
                    
                }.frame(width:350,height:60)
                    .background(.blue.opacity(0.03))
                
                HStack{
                    Image(systemName: "person.badge.key.fill")
                    
                    SecureField("Confirmpassword",text: $confirmpassword)
                    
                }
                .frame(width:350,height:60)
                    .background(.blue.opacity(0.03))
                
                
                NavigationLink(destination:signin()){
                    Text("Sign Up")
                        .font(.system(size:20,weight:.bold))
                        .foregroundStyle(.black)
                        .frame(width:340,height:55)
                        .background(.blue)
                        .cornerRadius(12)
                }
                    NavigationLink(destination:login_page ()){
                        Text("Already have a account")
                            .font(.system(size: 12,weight:.bold))
                        
                        
                        
                       
                        
                        
                    
                }
                HStack{
                    
                    Image("Vector-2")
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(15)

                    Image("Vector-3")
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(15)
                    Image("Vector-4")
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(15)
                }
            }
        
            
        }.padding(.bottom,150)
    }
}

#Preview {
    newacc()
}
