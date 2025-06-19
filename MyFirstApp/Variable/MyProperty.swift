//
//  MyProperty.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/19/25.
//

import SwiftUI

// 변수와 프로퍼티의 차이

struct MyProperty: View {
    
    @State var won: Int = 1000
    var yen: Int {
        get {
            return won/10
        }
    }
    // 프로퍼티 - 저장 프로퍼트 <- 변수
    //        - 연산 프로퍼티 <- get, set 을 이용해 연산을 도와줌
    
    var body: some View {
        VStack {
            Text("\(won.description)원 있습니다.")
            Text("\(yen.description)엔 있습니다.")
            Button {
                won = 200
            } label: {
                Text("Button")
            }
        }
    }
}

#Preview {
    MyProperty()
}
