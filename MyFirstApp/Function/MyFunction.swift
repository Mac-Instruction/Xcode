//
//  MyFunction.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct MyFunction: View {
    
    // function(함수) : 반복되는 코드 사용, 너무 긴 코드 정리
    // 키워드:func 함수명(입력값: 데이터타입) -> 반환타입 { 코드 }
    @State var myMind: String = "nothing"
    @State var isChangedMind: Bool = false
    
    var body: some View {
        VStack {
            Text(myMind)
            
            Button {
                isChangedMind.toggle()
                
                myMind = getMind(with: isChangedMind)
            } label: {
                Text("Chang My Mind!")
            }
        }
    }
    
    func getMind(with isChangedMind: Bool) -> String {
        if isChangedMind {
            return "always open"
        } else {
            return "but closed"
        }
    }
}

#Preview {
    MyFunction()
}
