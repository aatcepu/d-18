//
//  Welcome_page.swift
//  NewProject
//
//  Created by Student on 11/09/26.
//

import SwiftUI
import MapKit

struct Welcome_page: View {
    @State private var gotoswift:Bool = false
    @State private var gotoRuby:Bool = false
    @State private var gotoc:Bool = false
    @State private var gotopython:Bool = false
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(spacing:15){
                    
                    Button{
                        
                        gotoswift = true
                        
                    }label: {
                        
                        VStack{
                            
                            NavigationLink(destination: Swift_language()){
                                
                                Image("Swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                Text("Swift programming")
                                    .font(.system(size:20))
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                            }.frame(width: 350, height: 150)
                                .background(.orange.opacity(0.10))
                                .cornerRadius(15)
                        }
                    }
                    NavigationStack{
                        ScrollView{
                            
                            VStack(spacing:15){
                                
                                Button{
                                    
                                    gotoRuby = true
                                    
                                }label: {
                                    
                                    VStack{
                                        
                                        NavigationLink(destination: Ruby_language()){
                                            
                                            Image("Ruby")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 60)
                                            Text("Ruby programming")
                                                .font(.system(size:20))
                                                .fontWeight(.semibold)
                                                .foregroundStyle(.black)
                                        }.frame(width: 350, height: 150)
                                            .background(.orange.opacity(0.10))
                                            .cornerRadius(15)
                                    }
                                }
                                NavigationStack{
                                    ScrollView{
                                        
                                        VStack(spacing:15){
                                            
                                            Button{
                                                
                                                gotoc = true
                                                
                                            }label: {
                                                
                                                VStack{
                                                    Image("C")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 60, height: 60)
                                                    Text("C programming")
                                                        .font(.system(size:20))
                                                        .fontWeight(.semibold)
                                                        .foregroundStyle(.black)
                                                }.frame(width: 350, height: 150)
                                                    .background(.orange.opacity(0.10))
                                                    .cornerRadius(15)
                                            }
                                        }
                                        NavigationStack{
                                            ScrollView{
                                                
                                                VStack(spacing:20){
                                                    
                                                    Button{
                                                        
                                                        gotopython = true
                                                        
                                                    }label: {
                                                        
                                                        VStack{
                                                            Image("Python")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width: 60, height: 60)
                                                            Text("Python programming")
                                                                .font(.system(size:20))
                                                                .fontWeight(.semibold)
                                                                .foregroundStyle(.black)
                                                        }.frame(width: 350, height: 150)
                                                            .background(.orange.opacity(0.10))
                                                            .cornerRadius(15)
                                                    }
                                                }
                                                Text("Welcome to my app!")
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Welcome_page()
}
