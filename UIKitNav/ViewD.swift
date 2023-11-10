//
//  ViewD.swift
//  UIKitNav
//
//  Created   on 11/10/23.
//

import SwiftUI

struct ViewD: View {
    let names = ["John", "Paul", "George", "Ringo"]
    @State private var showName: Bool = false
    @State private var presentedName: String?
    var body: some View {
        Group {
            Text("Uses state variables but doesn't work if not in NavigationStack")
            List(names, id: \.self) { name in
                Text(name)
                    .onTapGesture {
                        presentedName = name
                        showName = true
                    }
            }
        }
        .navigationDestination(isPresented: $showName) {
            Text(presentedName ?? "NO NAME")
                .font(.largeTitle)
        }
    }
}

#Preview {
    NavigationStack {
        ViewD()
    }
}
