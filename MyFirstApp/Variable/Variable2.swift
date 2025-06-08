//
//  Variable2.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct Variable2: View {
    
    // 대입연산자 : 오른쪽에 있는 값을 왼쪽에 넣는 것
    var age: Int = 20
    var anyNum = 6
    var anyNum2 = 8
    var anyNum3 = 6
    
    var body: some View {
        VStack {
            Text("-----사칙연산자-----")
            Text("\(age) + \(anyNum) = \(age + anyNum)")
            Text("\(age) - \(anyNum) = \(age - anyNum)")
            Text("\(age) * \(anyNum) = \(age * anyNum)")
            Text("\(age) / \(anyNum) = \(age / anyNum)")    // 숫자는 정수이기때문에 나눈 값도 소수점이 아니라 정수까지만 잘림
            Text("\(age) % \(anyNum) = \(age % anyNum)")
            Text("-----비교연산자-----")
            Text("\(anyNum) <= \(anyNum2) = \(anyNum < anyNum2)")
            Text("\(anyNum) >= \(anyNum2) = \(anyNum > anyNum2)")
            Text("\(anyNum) == \(anyNum3) = \(anyNum == anyNum3)")
            Text("\(anyNum) != \(anyNum3) = \(anyNum != anyNum3)")
        }
    }
}

#Preview {
    Variable2()
}
