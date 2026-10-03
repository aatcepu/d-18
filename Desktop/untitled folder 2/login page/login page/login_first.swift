

import SwiftUI

struct login_first: View {
    @State var movetoSignin : Bool = false
    var body: some View {
        NavigationStack{
            
        VStack(spacing: 20){
            Image(.moneyLogo)
                .resizable()
                .frame(width: 300, height: 300)
    
                .padding()
        Button{
            
        }label: {
          
                
                
                Text("Get Started")
                    .fontDesign(.rounded)
                    .fontWeight(.bold)
                    .font(.title)
//                    .font(.custom("default", size: 30))
                    .foregroundStyle(.white)
                
            }.frame(width:300 , height: 65)
                .background(.emailbtn)
                .cornerRadius(30)
            Button{
                
            }label: {
              
                    
                    
                    Text("Login")
                    .fontDesign(.rounded)
                    .fontWeight(.heavy)
                    .font(.title)
//                    .font(.custom("default", size: 30))
                        .foregroundStyle(.emailbtn)
                    
                }.frame(width:300 , height: 65)
                .background(.white)
                .cornerRadius(30)
                .shadow(color: Color.gray.opacity(0.4), radius: 15, x: 0 , y: -5)
//                .border(Color(.emailbtn) , width: 4)
            HStack{
                
                Text("New around here?")
                Button{
                    movetoSignin = true
                }label: {
                    Text("Sign in")
                        .foregroundStyle(.emailbtn)
                }
            }.padding(.top)
            
        
            Divider().padding().padding(.top).padding(.top)
                .navigationDestination(isPresented: $movetoSignin){
                ContentView()
            }
            
        }
    }
}
}

#Preview {
    login_first()
}
