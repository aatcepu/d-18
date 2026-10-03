//
//  ContentView.swift
//  Batch-9
//
//  Created by Student on 01/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var Physics:String = ""
    @State private var Maths:String = ""
    @State private var English:String = ""
    var body: some View {
        
        ZStack {
            Image(systemName:"graduationcap.fill")
                .font(.system(size:120))
                .foregroundStyle(.blue.opacity(0.08))
                .offset(x:130, y:-300)
            
            Image(systemName:"book.fill")
                .font(.system(size:100))
                .foregroundStyle(.purple.opacity(0.08))
                .offset(x:-130, y:-150)
            
            Image(systemName:"pencil.and.ruler.fill")
                .font(.system(size:90))
                .foregroundStyle(.orange.opacity(0.08))
                .offset(x:140 ,y:50)
            
            Image(systemName:"checkmark.seal.fill")
                .font(.system(size:100))
                .foregroundStyle(.green.opacity(0.09))
                .offset(x:-140, y:200)
            
            Image(systemName:"doc.text.fill")
                .font(.system(size:100))
                .foregroundStyle(.red.opacity(0.09))
                .offset(x:140, y:350)
            
            VStack{
                
                Text("Student grad Calculator")
                    .fontDesign(.rounded)
                    .font(.system(size:30))
                    .fontWeight(.semibold)
                    .foregroundStyle(LinearGradient(colors:[.red,.yellow,.blue],startPoint:.leading, endPoint: .trailing))
            }
            TextField("Physics Marks")
        }
    }
}

#Preview {
    ContentView()
}
