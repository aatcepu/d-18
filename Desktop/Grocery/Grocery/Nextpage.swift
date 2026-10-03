//
//  Nextpage.swift
//  Grocery
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct Nextpage: View {
    @State private var phoneNumber = ""
    @State private var selectedCountry: 
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Mask Group")
                    .scaledToFit()
                    .padding(.bottom, 500)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Get your groceries /n with nectar")
                        .font(.system(size:30))
                        .fontWeight(.bold)
                        .padding(.trailing,90)
                    
                                            phoneNumber: $phoneNumber,
                        selectedCountry: $selectedCountry
                        
                    )
                    
                    Text("Or connect with social media")
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}
#Preview {
    Nextpage()
}
