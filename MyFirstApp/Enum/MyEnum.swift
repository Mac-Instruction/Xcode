//
//  MyEnum.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

// enum(열거형) : 선택지를 제공할 때

struct MyEnum: View {
    
//    @State var menu: String = "pork"
    @State var menu: Menu = .salmon
    
    enum Menu {
        case beef, pork, chicken, duck, salmon, lamb, fish
    }
    
    var body: some View {
//        if menu == .beef {
//            Text("오늘 메뉴는 소고기")
//        } else if menu == .pork {
//            Text("오늘 메뉴는 돼지고기")
//        } else if menu == .chicken {
//            Text("오늘 메뉴는 닭고기")
//        } else {
//            Text("오늘 뭐 먹지?")
//        }
        
        switch menu {
            case .beef, .pork:
                Text("오늘 메뉴는 다리가 4개인 고기")
//            case .pork:
//                Text("오늘 메뉴는 돼지고기")
            case .chicken:
                Text("오늘 메뉴는 닭고기")
            default:
                Text("오늘 뭐 먹지?")
        }
    }
}

#Preview {
    MyEnum()
}
