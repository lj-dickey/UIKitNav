//
//  ViewA.swift
//  UIKitNav
//
//  Created   on 11/10/23.
//

import SwiftUI

struct ViewC: View {
    let names = ["John", "Paul", "George", "Ringo"]
    var body: some View {
        NavigationStack {
            Text("Shows two nav bars")
            Group {
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
}

#Preview {
    ViewC()
}
