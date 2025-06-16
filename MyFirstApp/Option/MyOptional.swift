//
//  MyOptional.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/9/25.
//

import SwiftUI

// optional 타입: 필수가 아님(있을수도 없을수도 있음). 타입 뒤에 ?
// -> 값이 있을 때와 있지 않을 때를 구별해서 써야할 때 사용

struct MyOptional: View {
    
//    let name: String = "SilveryWaves"
//    let age: Int? = 25  // 없으면 nil
    let name: String
    let age: Int?
    
    var body: some View {
        Text(name)
        // 1. 없을때 가정
//        Text(age?.description ?? "100")
        // 2. if let
        if let age = age {  // nil 이 아니라면 아래 코드
            Text(age.description)
        }
    }
}

#Preview {
    MyOptional(name: "SilveryWaves", age: nil)
//    MyOptional(age: nil)
}
