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
    @State private var percentage:Double = 0.0
    @State private var total_marks:Double = 0.0
    @State private var Grade:String = ""
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
            
            VStack(spacing:20){
                
                Text("Student grad Calculator")
                    .fontDesign(.rounded)
                    .font(.system(size:30))
                    .fontWeight(.semibold)
                    .foregroundStyle(LinearGradient(colors:[.red,.yellow,.blue],startPoint:.leading, endPoint: .trailing))
                
                HStack{
                    TextField("Physics Marks" , text: $Physics)
                        .padding()
                    Image(systemName: "atom")
                        .padding()
                }.frame(width: 300 , height: 70)
                .background(Color(.systemGray6))
                .cornerRadius(30)
                
                HStack{
                    TextField("Maths Marks" , text: $Maths)
                        .padding()
                    Image(systemName: "ruler")
                        .padding()
                }.frame(width: 300 , height: 70)
                .background(Color(.systemGray6))
                .cornerRadius(30)
                
                HStack{
                    TextField("English Marks" , text: $English)
                        .padding()
                    Image(systemName: "book")
                        .padding()
                }.frame(width: 300 , height: 70)
                .background(Color(.systemGray6))
                .cornerRadius(30)
                
                Button{
//                    func avg(){
                        
                    let m = Double(Maths) ?? 0.0
                    let e = Double(English) ?? 0.0
                    let p = Double(Physics) ?? 0.0
                    
                    
                    total_marks = m + e + p
//                    avg_marks = (m + e + p )/3
                    percentage = (total_marks / 300) * 100
                    Grade = ""
                    
                    if percentage >= 80{
                        Grade = "A"
                    }
                    else if(percentage >= 60){
                        Grade = "B"
                    }
                    else if(percentage >= 40){
                        Grade = "C"
                    }
                    else{
                        Grade = "Fail"
                    }
                        
                        
                    
                    
                    
                    
                }label: {
                    Text("Calculator")
                        .frame(width: 200 , height: 70)
                        .background(LinearGradient(colors: [.red , .yellow , .blue], startPoint: .leading, endPoint: .trailing))
                        .foregroundStyle(.black)
                        .cornerRadius(30)
                        
                }
                
                Text("Total Marks: \(total_marks)")
                
                
                Text("Percentage:\(percentage ,specifier:"%.2f") ")
                Text("Grade: \(Grade)")
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
