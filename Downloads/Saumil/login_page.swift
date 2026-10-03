
import SwiftUI

struct login_page: View {
    @State private var moveToNext: Bool = false
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color.gray.opacity(0.15)
                    .ignoresSafeArea()
                VStack{
                    Image(.loginpage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.bottom)
                        .padding(.bottom)
                        .padding(.bottom)
                    
                    
                    Button{
                      
                    }label: {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundStyle(.white)
                    } .frame(width: 200, height: 50)
                        .background(.llightblue)
                        .cornerRadius(30)
                    
                    Button{
                      
                    }label: {
                        Text("Login")
                            .foregroundStyle(.llightblue)
                            .font(.headline)
                            .foregroundStyle(.white)
                    } .frame(width: 200, height: 50)
                        .background(.white)
                        .cornerRadius(30)
                        .padding(.bottom)
                    HStack{
                        Text("New around here?")
                        
                        Button{
                            moveToNext = true
                        }label:{
                            Text("Sign In")
                                .foregroundStyle(.llightblue)
                        }
                        .navigationDestination(isPresented:$moveToNext){
                            ContentView()
                        }
                    }
                    
                    
                    
                }.padding(.top)
                    
                
            }
        }
    }
}
#Preview {
    login_page()
}
