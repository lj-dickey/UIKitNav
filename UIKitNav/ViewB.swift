//
//  ViewB.swift
//  UIKitNav
//
//  Created   on 11/10/23.
//

import SwiftUI

struct ViewB: View {
    let names = ["John", "Paul", "George", "Ringo"]
    var body: some View {
        Group {
            Text("Works with embedded destination view")
            List(names, id: \.self) { name in
                NavigationLink {
                    Text(name)
                        .font(.largeTitle)
                } label: {
                    Text(name)
                }
            }
        }
    }
}

#Preview {
    ViewB()
}
