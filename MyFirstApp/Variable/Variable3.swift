//
//  Variable3.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/8/25.
//

import SwiftUI

struct Variable3: View {
    
    // 큰 변수를 쓰면서 여러 개의 변수를 써야 할 때 변수의 묶음 만들기
    // Array(배열), Dictionary(사전), Set(집합)
    let name1 = "world"
    let name2 = "swift"
    let name3 = "iOS"   // ... 많아져서 힘듦
    // 1. 배열 : 어떠한 나열이기 때문에 순서대로 나옴
    let names: [String] = ["world", "swift", "iOS"]
    // 2. 사전
    let engKrDictionary: [String:String] = ["Apple":"사과", "Banana":"바나나", "Coconut":"코코넛"]
    // 3. 집합 : 중복으로 들어가도 중복이 사라짐
    let houseAnimals: Set = ["🐶", "🐱", "🐦", "🐦"]
    let farmAnimals: Set = ["🐮", "🐑", "🐶", "🐱", "🐔", "🐶"]
    
    var body: some View {
        VStack {
            Text("-----변수의 묶음-----")
            Text("\(names[0]), \(names[1]), \(names[2])")
            Text("\(engKrDictionary["Apple"]!), \(engKrDictionary["Banana"]!), \(engKrDictionary["Coconut"]!)")
            Text("교집합: \(houseAnimals.intersection(farmAnimals).description)")
            Text("합집합: \(houseAnimals.union(farmAnimals).description)")
        }
    }
}

#Preview {
    Variable3()
}
