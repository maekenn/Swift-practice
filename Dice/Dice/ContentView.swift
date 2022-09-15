//
//  ContentView.swift
//  Dice
//
//  Created by 前川健太 on 2022/09/15.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = 1
    @State var timer: Timer?
    @State var isRolling = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Spacer()
            Button(action: {
                print("ボタンが押されました")
                isRolling = true
                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){
                    _ in
                    randomNumber = Int.random(in: 1...6)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    timer?.invalidate()
                    timer = nil
                    isRolling = false
                }
                
            }) {
                Text("サイコロを振る")
                    .padding()
                    .background(.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .disabled(isRolling)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
