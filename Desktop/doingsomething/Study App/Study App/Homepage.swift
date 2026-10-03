import SwiftUI

struct HomePage: View {
    @State private var GotoSwift:Bool = false
    var body: some View {
        NavigationStack
        {
            ScrollView
            {
                VStack(){
                    
                    Button{
                        GotoSwift = true
                        
                        
                    }label: {
                        VStack{
                            Image(.swift)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("SWIFT")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                        }.frame(width: 350, height: 150)
                            .background(.orange .opacity(0.20))
                            .cornerRadius(20)
                        
                    }
                    Button{
                        
                    }label: {
                        VStack{
                            Image(.python)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("PYTHON")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                        }.frame(width: 350, height: 150)
                            .background(.blue .opacity(0.20))
                            .cornerRadius(20)
                        
                    }
                    Button{
                        
                    }label: {
                        VStack{
                            Image(.html)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text("HTML")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                        }.frame(width: 350, height: 150)
                            .background(.purple .opacity(0.20))
                            .cornerRadius(20)
                        
                    }
                }
            }
            .navigationDestination(isPresented:$GotoSwift){
                Swift_programming()
            }
                
            }
        }
    }


#Preview {
    HomePage()
}



