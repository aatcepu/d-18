//
//  Pythonprogramming.swift
//  Study App
//
//  Created by Student on 28/09/26.
//

import SwiftUI

struct Pythonprogramming: View {
    var body: some View
    {
        
        NavigationStack{
            
            VStack{
                List{
                    Section("Unit 1"){
                        Text("1.1 Introduction to Python")
                        Text("1.2 Constants, Variables and Data Types ")
                        Text("1.3 Contrl Fiow and Funcions ")
                        Text("1.4 Erron Handling")
                        
                    }
                    Section("Unit 2- Basics of Python"){
                        Text("2.1 Introductino to Python")
                        Text("2.2 Building a useer Interface")
                        Text("What is MVC Architecture")
                        
                    }
                    Section("Unit 3- Projects"){
                        Text("3.1 Instroduction to Python IDE")
                        Text("3.2 Start Project")
                        Text("3.3 Make a Python Application")
                        
                    
                    }
                }
            }
        }
        
    }
     
    
    
}



#Preview {
    Pythonprogramming()
}
