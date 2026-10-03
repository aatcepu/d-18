//
//  Basic.swift
//  login page
//
//  Created by Student on 02/07/26.
//

import SwiftUI

struct Basic: View {
    var body: some View {
        Button{
            
        }label:{
            Text("Signin")
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width:300 , height:100)
                .clipShape(Capsule()).background(Color(.systemGray5))
                .cornerRadius(30)
        }
            
    }
}

#Preview {
    Basic()
}
