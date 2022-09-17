//
//  ContentView.swift
//  ScreenTransition
//
//  Created by 前川健太 on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var isShowThirdView = false
    var body: some View {
        //ナビゲーション遷移
        NavigationView{
            VStack{
                Text("Hello, world!")
                    .padding()
                NavigationLink(destination: SecondView()
                                .navigationTitle("画面2")){
                    Text("SecondViewへ")
                }
                //モーダル遷移
                Button(action: {
                    isShowThirdView = true
                }) {
                    Text("モーダル遷移")
                        .padding()
                }
                .sheet(isPresented:  $isShowThirdView) {
                    ThirdView()
                }
            }
            .navigationTitle("画面1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
