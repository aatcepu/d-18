
import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                
                VStack(spacing:20) {
                    Text("Sign in")
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                    
                    
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
                                .background(Color(.systemGray3))
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.10), radius: 12, x: 5, y: 15)
                        }
                        
                        
                    }
                    HStack{
                        
                        
                        Button{
                            
                        }label: {
                            HStack{
                                Image(.googleIcon)
                                    .resizable()
                                    .frame(width: 20 , height:20)
                                Text("Sign in with Google ")
                                    .foregroundStyle(.llightblue)
                                
                            }.frame(width: 300 , height: 50)
                                .background(Color(.systemGray3))
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.10), radius: 12, x: 5, y: 15)
                                .padding(.bottom)
                        }
                        
                        
                    }.padding(.bottom)
                    Text("or get a link emailed to you ")
                        .foregroundColor(Color(.systemGray))
                    HStack {
                        TextField("Work email address", text: $email)
                            .padding()
                            .frame(width:300, height:50)
                            .background(Color(.systemGray5))
                            .cornerRadius(30)
                            .shadow(radius:3)
                            .shadow(color: Color.black.opacity(0.10), radius: 12, x: 5, y: 15)
                    } .padding()
                    
                    Button{
                        
                    } label: {
                        Text("Email me")
                            .foregroundColor(.white)
                    }.frame(width: 300 , height: 50)
                        .background(.llightblue)
                        .cornerRadius(30)
                        .shadow(radius:50)
                        .shadow(color: Color.black.opacity(0.10), radius: 12, x: 5, y: 15)
                    Divider().padding(.top)
                    
                    Text("You are completely Safe.")
                        .foregroundStyle(.black)
                    
                    
                    Button{
                        
                    }label: {
                        HStack{
                            Text("Read our Terms & Conditions")
                                .foregroundStyle(Color(.llightblue))
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
