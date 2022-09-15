//
//  ContentView.swift
//  HelloStack
//
//  Created by 前川健太 on 2022/09/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 350, height: 100)
            Rectangle()
                .foregroundColor(.purple)
                .frame(width: 350, height: 100)
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 50, height: 50)
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 350, height: 200)
                HStack{
                    VStack{
                        Rectangle()
                            .foregroundColor(.pink)
                            .frame(width: 150, height: 70)
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 150, height: 70)
                    }
                    VStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 150, height: 70)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 150, height: 70)
                        
                    }
                }
            }
        }
        
        //練習1
        VStack {
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 200, height: 50)
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundColor(.brown)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 200, height: 50)
        }
        
        //練習2
        ZStack {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 300, height: 300)
            
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 70)
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 70)
                }
                VStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 50, height: 20)
                }
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 100, height: 80)
            }
            
        }
        
        //練習3
        VStack {
            ZStack{
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 300, height: 300)
                VStack {
                    HStack{
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 60, height: 20)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 90, height: 90)
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 70, height: 70)
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 20, height: 20)
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 90, height: 90)
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 70, height: 70)
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 20, height: 20)
                        }
                        
                        
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 60, height: 20)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 70, height: 40)
                        VStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 60, height: 10)
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 60, height: 10)
                        }
                    }
                }
            }
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 300, height: 100)
            HStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 70, height: 30)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 70, height: 30)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
