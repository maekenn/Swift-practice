//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 前川健太 on 2022/09/15.
//

import SwiftUI

struct ContentView: View {
    @State var str = "HelloSwiftUI!"
    var body: some View {
        VStack {
            Text(str)
                .padding()
                .foregroundColor(.red)
            Button("ボタン") {
                str = "ハローSwiftUI"
               print("ボタンが押されました")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
