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
        VStack(spacing:20){
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
                
            }.frame(width:350,height:60)
                .background(.blue.opacity(0.03))
        }.padding(.bottom,400)
    }
}

#Preview {
    newacc()
}
