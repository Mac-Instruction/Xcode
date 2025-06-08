//
//  ContentView.swift
//  Test
//
//  Created by DepartmentStore Daegu on 6/8/25.
//

import SwiftUI

struct ContentView: View {
    
    // 대입연산자 : 오른쪽에 있는 값을 왼쪽에 넣는 것
    // var: 변수 / let: 상수(한번 저장한 값이 바뀌지 않음)
    // let/var 변수명(: 데이터타입) = 값
//    let name: String = "world"
//    var age: Int = 20
//    var height: Float = 168.9
//    var hasJob: Bool = true
//    var anyNum = 6
//    var anyNum2 = 8
//    var anyNum3 = 6
//    
//    // 큰 변수를 쓰면서 여러 개의 변수를 써야 할 때 변수의 묶음 만들기
//    // Array(배열), Dictionary(사전), Set(집합)
//    let name2 = "swift"
//    let name3 = "iOS"   // ... 많아져서 힘듦
//    // 1. 배열 : 어떠한 나열이기 때문에 순서대로 나옴
//    let names: [String] = ["world", "swift", "iOS"]
//    // 2. 사전
//    let engKrDictionary: [String:String] = ["Apple":"사과", "Banana":"바나나", "Coconut":"코코넛"]
//    // 3. 집합 : 중복으로 들어가도 중복이 사라짐
//    let houseAnimals: Set = ["dog", "cat", "bird", "bird"]
//    let farmAnimals: Set = ["cow", "sheep", "dog", "cat", "hen", "dog"]
    let farmAnimals = ["cow", "sheep", "dog", "cat", "hen", "cow", "sheep", "dog", "cat", "hen", "cow", "sheep", "dog", "cat", "hen"]
    
    // 조건문: if condition { code } else {}
    let num = 3
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
//            Text(name)
//            Text("name")
//            Text("Hello, \(name), \(age), \(height), \(hasJob.description)")    // .description: 설명값
//            Text("-----사칙연산자-----")
//            Text("\(age) + \(anyNum) = \(age + anyNum)")
//            Text("\(age) - \(anyNum) = \(age - anyNum)")
//            Text("\(age) * \(anyNum) = \(age * anyNum)")
//            Text("\(age) / \(anyNum) = \(age / anyNum)")    // 숫자는 정수이기때문에 나눈 값도 소수점이 아니라 정수까지만 잘림
//            Text("\(age) % \(anyNum) = \(age % anyNum)")
//            Text("-----비교연산자-----")
//            Text("\(anyNum) <= \(anyNum2) = \(anyNum < anyNum2)")
//            Text("\(anyNum) >= \(anyNum2) = \(anyNum > anyNum2)")
//            Text("\(anyNum) == \(anyNum3) = \(anyNum == anyNum3)")
//            Text("\(anyNum) != \(anyNum3) = \(anyNum != anyNum3)")
//            Text("-----변수의 묶음-----")
//            Text("\(names[0]), \(names[1]), \(names[2])")
//            Text("\(engKrDictionary["Apple"]!), \(engKrDictionary["Banana"]!), \(engKrDictionary["Coconut"]!)")
//            Text("교집합: \(houseAnimals.intersection(farmAnimals).description)")
//            Text("합집합: \(houseAnimals.union(farmAnimals).description)")
//            Text("-----조건문-----")
//            if num % 2 == 0 {
//                Text("짝수")
//
//            } else {
//                Text("홀수")
//            }
            Text("-----반복문-----")
            // 방법1.
//            ForEach(farmAnimals, id: \.self) {
//                animal in Text(animal)
//            }
            // 방법2. 위험한 방법이므로 1번 사용 권장 : 인덱스 번호를 넘기면 앱이 죽음
            ForEach (0 ..< 5) {
                number in Text(farmAnimals[number])
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
