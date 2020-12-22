//
//  RootView.swift
//  PopToRootDemo
//
//  Created by okudera on 2020/12/22.
//

import SwiftUI

struct RootView: View {

    /// ナビゲーションリンクのトリガーとなるフラグ
    @State var isActive: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Hello, World!")
                    Button("詳細へ", action: {
                        self.isActive = true
                    })
                }
                StatefulNavigationLinkBuilder.build(destination: DetailView(), isActive: $isActive, navigationBarTitle: "RootView")
            }
        }
        .environment(\.rootPresentationMode, self.$isActive) // ナビゲーションのルートに設定する。
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
