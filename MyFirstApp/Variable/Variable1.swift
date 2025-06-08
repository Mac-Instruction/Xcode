//
//  Variable1.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct Variable1: View {
    
    // var: 변수 / let: 상수(한번 저장한 값이 바뀌지 않음)
    // let/var 변수명(: 데이터타입) = 값
    let name: String = "world"
    var age: Int = 20
    var height: Float = 168.9
    var hasJob: Bool = true
    
    var body: some View {
        VStack {
            Text(name)
            Text("name")
            Text("Hello, \(name), \(age), \(height), \(hasJob.description)")    // .description: 설명값
        }
    }
}

#Preview {
    Variable1()
}
