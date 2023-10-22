//
//  ViewModifier.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 22.10.2023.
//

import SwiftUI

struct ViewDidLoadModifier: ViewModifier {

    @State private var didLoad = false
    private let action: (() -> Void)?

    init(perform action: (() -> Void)? = nil) {
        self.action = action
    }

    func body(content: Content) -> some View {
        content.onAppear {
            if didLoad == false {
                didLoad = true
                action?()
            }
        }
    }

}

struct CustomViewModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewModifier()
    }
}

extension View {

    func onLoad(perform action: (() -> Void)? = nil) -> some View {
        modifier(ViewDidLoadModifier(perform: action))
    }

}
