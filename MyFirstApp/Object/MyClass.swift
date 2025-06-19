//
//  MyClass.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/19/25.
//

import SwiftUI

// 구조체는 엑셀파일, 클래스는 시프레드시트라고 생각하기
// 엑셀 파일은 내가 작업한 후 보낸 파일을 다른 사람이 작업해도 내 파일이 변하지 않음
// 스프레드시트는 내가 작업한 후 다른 사람이 링크로 이동해 작업하면 내용이 변경됨

// struct 는 이 값을 복사해서 주는 것으로, 받은 사람과 준 사람이 서로 다른걸 가지게 됨
struct Person {
    var name: String
    let age: Int
}

// 클래스는 initializers 필수
// class 는 둘이 공유할 수 있는 링크를 주는 것으로, 둘이 같이 변함
class PersonClass {
    var name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct MyClass: View {
    
//    var silverywaves = Person(name: "silverywaves", age: 33)
    @State var nickName: String = "None"
    
    var body: some View {
        VStack {
//            Text(silverywaves.name)
//            Text(silverywaves.age.description)
            Text(nickName)
            
            Button {
//                var silverywaves = Person(name: "silverywaves", age: 33)
                var silverywaves = PersonClass(name: "silverywaves", age: 33)
                var fakeSilverywaves = silverywaves
                silverywaves.name = "silverywaves2"
                fakeSilverywaves.name = "silverywaves3"
                nickName = fakeSilverywaves.name
            } label: {
                Text("Hit")
            }
        }
    }
}

#Preview {
    MyClass()
}
