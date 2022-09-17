//
//  SecondView.swift
//  ScreenTransition
//
//  Created by 前川健太 on 2022/09/17.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color(.orange)
            Text("Second View")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
