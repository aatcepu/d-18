//
//  ContentView.swift
//  login page
//
//  Created by student on 30/06/26.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                VStack(spacing: 20) {
                    Text("Sign in")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                    
                    
                    HStack{
                        
                        
                        Button{
                            
                        }label: {
                            HStack{
                                Image(.appleIcon)
                                    .resizable()
                                    .frame(width: 20 , height:20)
                                Text("Sign in with Apple ")
                                    .foregroundStyle(Color(.white))
                                
                            }.frame(width: 300 , height: 50)
                                .background(Color(.emailbtn))
                                .cornerRadius(30)
                            
                        }
                        
                        
                    }.padding()
                    HStack{
                        
                        
                        Button{
                            
                        }label: {
                            HStack{
                                Image(.googleIcon)
                                    .resizable()
                                    .frame(width: 20 , height:20)
                                Text("Sign in with Google ")
                                    .foregroundStyle(Color(.white))
                                
                            }.frame(width: 300 , height: 50)
                                .background(Color(.emailbtn))
                                .cornerRadius(30)
                            
                        }
                        
                        
                    }
                    Text("or get a link emailed to you ")
                        .foregroundColor(Color(.systemGray))
                        .padding(.top)
                    
                    HStack {
                        TextField("Work email address" , text: $email,prompt: Text("Enter the Email Address... ") .foregroundStyle(.black))
                        
                            .padding()
                            .frame(width: 300 , height: 50)
                            .background(Color(.txtfield))
                            .cornerRadius(30)
                        //                            .shadow(radius: 3)
                        
                            .foregroundStyle(.black)
                    }.padding(.bottom)
                    
                    Button{
                        
                    }label:{
                        Text("Email me")
                    }.frame(width: 300 , height: 50)
                        .background(.emailbtn)
                        .cornerRadius(30)
                    //                    .foregroundStyle(Color(.black))
                        .shadow(radius: 2)
                    Divider().padding(.top).padding(.top).padding().padding(.bottom)
                    
                    Text("You are completely safe. ")
                        .foregroundStyle(.black)
                    
                    Button{
                        
                    }label: {
                        HStack{
                            
                            Text("Read our Terms and Conditions.")
                                .foregroundStyle(Color(.emailbtn))
                            
                        }
                        
                    }
                    
                }.foregroundStyle(.txt)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
