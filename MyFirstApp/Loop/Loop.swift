//
//  Loop.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct Loop: View {
    
    let farmAnimals = ["🐮", "🐑", "🐶", "🐱", "🐔", "🐮", "🐑", "🐶", "🐱", "🐔"]

    var body: some View {
        VStack {
            Text("-----반복문-----")
            // 방법1.
            ForEach(farmAnimals, id: \.self) {
                animal in Text(animal)
            }
            // 방법2. 위험한 방법이므로 1번 사용 권장 : 인덱스 번호를 넘기면 앱이 죽음
//            ForEach (0 ..< 5) {
//                number in Text(farmAnimals[number])
//            }
        }
    }
}

#Preview {
    Loop()
}
