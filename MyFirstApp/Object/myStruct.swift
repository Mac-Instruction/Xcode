//
//  myStruct.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/17/25.
//

import SwiftUI

// struct(구조체): 구조화 된 여러개의 정보를 한번에
struct UserInfo {
    let name: String
    let age: Int?
    let email: String?
    let job: String?
    let hasPet: Bool
    
    func sayMyName(with name: String) {
        print(name)
    }
}

struct MyStruct: View {
    
//    let name: String
//    let age: Int?
//    let email: String?
//    let job: String?
//    let hasPet: Bool
    
    let userInfo: UserInfo
    
    var body: some View {
        VStack {
//            Text(name)
//            Text(age?.description ?? "100")
//            Text(email?.description ?? "admin1234@gmail.com")
//            Text(job?.description ?? "None")
//            Text(hasPet.description)
            
            Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            Text(userInfo.email?.description ?? "admin1234@gmail.com")
            Text(userInfo.job?.description ?? "None")
            Text(userInfo.hasPet.description)
            
            Button {
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Button")
            }
        }
    }
    
//    func sayMyName(with name: String) {
//        print(name)
//    }
}

#Preview {
//    MyStruct(name: "silverywaves",
//             age: 25,
//             email: "babyshu1210@gmail.com",
//             job: "developer",
//             hasPet: true)
    
//    MyStruct(userInfo: UserInfo(name: "silverywaves",
//                                 age: 25,
//                                 email: "babyshu1210@gmail.com",
//                                 job: "developer",
//                                 hasPet: true))
    
    let silverywaves = UserInfo(name: "silverywaves",
                                age: 33,
                                email: "babyshu1210@gmail.com",
                                job: "developer",
                                hasPet: true)
    
    let JeongHan = UserInfo(name: "YoonJeongHan",
                            age: 31,
                            email: nil,
                            job: "singer",
                            hasPet: false)
    
    MyStruct(userInfo: silverywaves)
}
