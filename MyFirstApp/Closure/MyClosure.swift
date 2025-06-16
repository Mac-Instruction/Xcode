//
//  MyClosure.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/10/25.
//

import SwiftUI

// closure: 익명함수
// 함수로 할 수 있는건 클로저로 다 할 수 있음
// 이름 필요 없이 타입만 가지고 할 때

struct MyClosure: View {
    
    let myFirstClosure: () -> Void = {
        print("Hello Closure")
    }
    
    let mySecondClosure: (String) -> Int = { name in
        return 3
    }
    
    // 입력 받지않고 반환하지 않는 타입
    func sayHi() -> () {
        print("Hi")
    }
    
    // 트레일링 클로저
    func sayHi2(action: ()->()) -> Void {
        print("Hi2 function")
    }
    
    var body: some View {
        VStack {
            Button(action: myFirstClosure) {
                Text("Closure Button 1")
            }
            
            Button {
                let result = mySecondClosure("string")
                print("결과: \(result)")
            } label: {
                Text("Closure Button 2")
            }
            
            Button {
                sayHi()
            } label: {
                Text("Function Button")
            }
            
            Button {
                sayHi2 {
                    
                }
            } label: {
                Text("Button")
            }
        }
    }
}

#Preview {
    MyClosure()
}
