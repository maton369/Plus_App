import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var result: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("足し算アプリ")
                .font(.largeTitle)
                .padding()

            TextField("1つ目の数字", text: $number1)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("2つ目の数字", text: $number2)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button(action: {
                if let n1 = Int(number1), let n2 = Int(number2) {
                    result = "結果: \(n1 + n2)"
                } else {
                    result = "有効な数字を入力してください"
                }
            }) {
                Text("計算")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Text(result)
                .font(.title)
                .padding()
        }
    }
}
