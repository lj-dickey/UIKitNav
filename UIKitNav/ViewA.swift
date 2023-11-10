//
//  ViewA.swift
//  UIKitNav
//
//  Created   on 11/10/23.
//

import SwiftUI

struct ViewA: View {
    let names = ["John", "Paul", "George", "Ringo"]
    var body: some View {
        Group {
            Text("Doesn't allow navigation")
            List(names, id: \.self) { name in
                NavigationLink(value: name) {
                    Text(name)
                }
            }
        }
        .navigationDestination(for: String.self) { name in
            Text(name)
                .font(.largeTitle)
        }
    }
}

#Preview {
    ViewA()
}
