//
//  ContentView.swift
//  HelloObjects
//
//  Created by 前川健太 on 2022/09/15.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var ison = true
    var body: some View {
        VStack {
            Text("Hello, world")
            
            Button(action: {
                //押したらここが呼ばれる
            }){
                Text("ボタン")
            }
            Image("no_image")
            
            Image(systemName: "car")
            
            List{
                Text("りんご")
                Text("みかん")
                Text("スイカ")
            }
            
            TextField("ここに文字を入力します", text: $inputText)
            
                   Toggle("Toggle", isOn: $ison)
                   }
                   
                   }
                   }
                   
                   struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
