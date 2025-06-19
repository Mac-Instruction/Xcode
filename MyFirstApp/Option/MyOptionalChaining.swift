//
//  MyOptionalChaining.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/19/25.
//

import SwiftUI

struct Student {
    let name: String
    let pet: Pet?
}

struct Pet {
    let name: String
    let age: Int
}

struct MyOptionalChaining: View {

    let silverywaves = Student(name: "응블리", pet: Pet(name: "tory", age: 2))
    let rose = Student(name: "rose", pet: nil)

    var body: some View {
        VStack {
            Text(silverywaves.name)
            Text(rose.pet?.name ?? "no pet")
            
            if let petName = silverywaves.pet?.name {
                Text(petName)
            }
        }
    }
}

#Preview {
    MyOptionalChaining()
}
