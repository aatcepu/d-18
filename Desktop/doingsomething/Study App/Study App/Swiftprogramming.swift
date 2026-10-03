//
//  Swift programming.swift
//  Study App
//
//  Created by Student on 28/09/26.
//

import SwiftUI

struct Swift_programming: View {
    var body: some View
    {
        
        NavigationStack{
            
            VStack{
                List{
                    Section("Unit 1"){
                        Text("1.1 Introduction to swift programming")
                        Text("1.2 constant Variable And Data types ")
                        Text("1.3 control flow and function")
                        Text("1.4 Error handling")
                        
                    }
                    Section("Unit 2- Basic of swift UI"){
                        Text("2.1 Introductino to Swift UI")
                        Text("2.2 Building a user interface")
                        Text("What is MVM Architrcture")
                        
                    }
                    Section("Unit 3- Projects"){
                        Text("3.1 Instroduction to Xcode")
                        Text("3.2 Start Project")
                        Text("3.3 Make a commerce App")
                        
                    
                    }
                }
            }
        }
        
    }
     
    
    
}



#Preview {
    Swift_programming()
}
