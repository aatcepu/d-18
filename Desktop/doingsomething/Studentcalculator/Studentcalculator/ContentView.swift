import SwiftUI

struct ContentView: View {
    
    @State private var maths = ""
    @State private var physics = ""
    @State private var chemistry = ""
    
    @State private var totalMarks = 0
    @State private var percentage = 0.0
    @State private var grade = "-"
    
    var body: some View {
        ZStack {
            
            
            LinearGradient(
                colors: [
                    Color.blue.opacity(0.08),
                    Color.white,
                    Color.purple.opacity(0.08)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            
            Image(systemName: "book.fill")
                .font(.system(size: 100))
                .foregroundStyle(.purple.opacity(0.08))
                .offset(x: -130, y: -150)
            
            Image(systemName: "pencil.and.ruler.fill")
                .font(.system(size: 90))
                .foregroundStyle(.orange.opacity(0.08))
                .offset(x: 140, y: 50)
            
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 110))
                .foregroundStyle(.green.opacity(0.08))
                .offset(x: -140, y: 250)
            
            Image(systemName: "doc.text.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue.opacity(0.08))
                .offset(x: 140, y: 300)
            
            
            ScrollView {
                VStack(spacing: 20) {
                    
                   
                    
                    Text("Student Grade Calculator")
                        .font(.system(size: 27, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.orange, .blue],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .padding(.top, 35)
                    
                    
                    
                    
                    gradeField(
                        title: "Maths marks",
                        icon: "sum",
                        text: $maths
                    )
                    
                    gradeField(
                        title: "Physics marks",
                        icon: "atom",
                        text: $physics
                    )
                    
                    gradeField(
                        title: "Chemistry marks",
                        icon: "flask",
                        text: $chemistry
                    )
                    
                    
                    
                    
                    Button {
                        calculateGrade()
                    } label: {
                        Text("Calculate")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(
                                LinearGradient(
                                    colors: [
                                        .orange,
                                        .pink,
                                        .purple,
                                        .blue,
                                        .green
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                    }
                    .padding(.top, 5)
                    
                    
                
                    
                    VStack(spacing: 14) {
                        
                        Text("Total Marks: \(totalMarks)/300")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        
                        Text(
                            String(
                                format: "Percentage: %.2f%%",
                                percentage
                            )
                        )
                        .font(.system(size: 17, weight: .medium))
                        .foregroundStyle(.blue)
                        
                        Text("Grade: \(grade)")
                            .font(.system(size: 19, weight: .bold))
                            .foregroundStyle(.blue)
                    }
                    .padding(.top, 12)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
    }
    
    
    
    
    func gradeField(
        title: String,
        icon: String,
        text: Binding<String>
    ) -> some View {
        
        HStack {
            
            TextField(title, text: text)
                .keyboardType(.numberPad)
                .font(.system(size: 16))
            
            Image(systemName: icon)
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal, 18)
        .frame(height: 55)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.white.opacity(0.75))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.blue.opacity(0.12), lineWidth: 1)
        )
        .shadow(
            color: .black.opacity(0.04),
            radius: 5,
            y: 3
        )
    }
    
    
    
    
    func calculateGrade() {
        
        let math = Int(maths) ?? 0
        let phy = Int(physics) ?? 0
        let chem = Int(chemistry) ?? 0
        
        totalMarks = math + phy + chem
        
        percentage = (Double(totalMarks) / 300.0) * 100
        
        if percentage >= 90 {
            grade = "A+"
        } else if percentage >= 80 {
            grade = "A"
        } else if percentage >= 70 {
            grade = "B"
        } else if percentage >= 60 {
            grade = "C"
        } else if percentage >= 50 {
            grade = "D"
        } else {
            grade = "F"
        }
    }
}

#Preview {
    ContentView()
}


