





import SwiftUI

struct Create_Account: View {
    @State private var email: String = ""
    @State private var passowrd: String = ""
    @State var showPass bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                Text("Login")
                    .font(.system(size : 35))
                    .fontheight(.semibold)
                
                HStack{
                    
                }
            }
        }
    }
}

#Preview {
    Create_Account()
}
