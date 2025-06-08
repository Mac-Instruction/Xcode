//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var menu: String? = "오늘 뭐 먹지?"
//    let menus: [String] = ["초밥", "김밥", "고갈비", "냉면", "마라탕", "제육볶음"]
    let menus2: [Menu] = [.sushi, .kimBap, .kogalbi, .coldNoodle, .marasoup, .jaeyuk]
    
    enum Menu: String {
        case sushi = "초밥"
        case kimBap = "김밥"
        case kogalbi = "고갈비"
        case coldNoodle = "냉면"
        case marasoup = "마라탕"
        case jaeyuk = "제육볶음"
    }
    
    var body: some View {
        VStack {
            if menu == "초밥" || menu == "마라탕" {
                Text("내가 제일 좋아하는 \(menu!)")
            } else {
                Text(menu!)
            }
            
            Button {
//                menu = menus.randomElement()  // 랜덤
                menu = menus2.randomElement()?.rawValue
            } label: {
                Text("선택")
            }
        }
    }
}

#Preview {
    ContentView()
}
