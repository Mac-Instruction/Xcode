//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 응블리 on 6/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("Clicked!!")
            } label: {
                
                //            Image(systemName: "globe")
                //                .imageScale(.large)
                //                .foregroundStyle(.tint)
                Text("Hello, Thunder!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.purple)
                    .padding()
                    .border(Color.purple, width: 1)
            }
        }
    }
}

#Preview {
    ContentView()
}
