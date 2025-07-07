//
//  MyMethod.swift
//  MyFirstApp
//
//  Created by 응블리 on 7/7/25.
//

import SwiftUI

// 함수 <- {} 이렇게 코드 블록을 가지고 호출할 수 있는 것
func returnHello() -> String {
    return "Hello"
}

struct MyMethod: View {
    var body: some View {
        Text(returnHi())
    }
    
    // 메소드 <- enum, struct, class 안에서 사용되는 함수(다른 enum, struct, class 에서 사용 불가
    func returnHi() -> String {
        return "Hi"
    }
}

#Preview {
    MyMethod()
}
