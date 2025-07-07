import SwiftUI

struct ContentView: View {
    @State var leftDiceImage = 1
    @State var rightDiceImage = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack(spacing:30){
                    diceRoller(n: leftDiceImage)
                    diceRoller(n: rightDiceImage)
                }
                Spacer()
                Button {
                    // write something
                    self.leftDiceImage = Int.random(in: 1...6)
                    self.rightDiceImage = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .padding()
                        .frame(width: 200, height: 60)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .background(Color.red)
                        .cornerRadius(20)
                }
                .padding(.bottom)
                
            }
        }
    }
}

struct diceRoller: View {
    var n: Int
    var body: some View{
            Image("dice\(n)")
                .resizable()
                .frame(width: 150, height: 150)
    }
}

#Preview {
    ContentView()
}
