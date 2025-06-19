//
//  MyOptionalBinding.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/19/25.
//

import SwiftUI

struct MyOptionalBinding: View {
    
    let nickName: String? = nil
    
    var body: some View {
        // Text 는 옵션이 아닌 확실한 값을 요구함
        
        // ---옵셔널 타입안의 값을 안전하게 꺼내오는 방법---
        // 1. ?? : 값이 nil 일 경우 대체값 설정
        Text(nickName ?? "silverywaves")
        // 2. ! : 옵셔널이 떨어진 타입이 됨
//        Text(nickName!)   // 단, 값이 nil 일 경우 앱이 죽으니 사용권장X
        // 3. if let : 값이 있을때와 없을때 조건부 처리
        if let nickName = nickName {
            Text(nickName)
        } else {
            Text("nickName")
        }
    }
}

#Preview {
    MyOptionalBinding()
}
