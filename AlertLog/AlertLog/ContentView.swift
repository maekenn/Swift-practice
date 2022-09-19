//
//  ContentView.swift
//  AlertLog
//
//  Created by 前川健太 on 2022/09/19.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    
    var body: some View {
        VStack{
            Button(action: {
                isShowAlert = true
            }) {
                Text("アラートを表示")
            }
            //アラート
            .alert("タイトル", isPresented: $isShowAlert) {
                Button("キャンセル") {
                }
                Button("OK"){
                }
            } message: {
                Text("ここに詳細メッセージを書きます。")
            }
            Button(action: {
                isShowDialog = true
            }) {
                Text("ダイアログを表示")
                    .padding()
            }
            //ダイアログ
            .confirmationDialog("" ,isPresented: $isShowDialog, titleVisibility:  .visible) {
                Button("選択肢1"){}
                Button("選択肢2"){}
            }message: {
                Text("メッセージ")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
