//
//  Condition.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct Condition: View {
    
    // 조건문: if condition { code } else {}
    let num = 3
    
    var body: some View {
        Text("-----조건문-----")
        if num % 2 == 0 {
            Text("짝수")

        } else {
            Text("홀수")
        }    }
}

#Preview {
    Condition()
}
