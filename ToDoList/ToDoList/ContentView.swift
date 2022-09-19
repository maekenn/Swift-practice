//
//  ContentView.swift
//  ToDoList
//
//  Created by 前川健太 on 2022/09/19.
//

import SwiftUI

struct TaskData: Identifiable{
    var title: String
    var completed: Bool
    var id = UUID()
}

struct ContentView: View {
    @State var taskData = [
        TaskData(title: "ジョギングする", completed: false),
        TaskData(title: "お花に水をやる", completed: false),
        TaskData(title: "部屋の掃除をする", completed: false),
        TaskData(title: "本を読む", completed: false)
    ]
    
    var body: some View {
        NavigationView {
            List(0..<taskData.count, id:\.self) { index in
                Button(action: {
                    print("セルが押されました")
                    taskData[index].completed.toggle()
                }){
                    HStack {
                        Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.black)
            }
            .navigationTitle("ToDoリスト")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
