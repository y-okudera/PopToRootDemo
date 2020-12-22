//
//  DetailView.swift
//  PopToRootDemo
//
//  Created by okudera on 2020/12/22.
//

import SwiftUI

struct DetailView: View {

    /// ナビゲーションリンクのトリガーとなるフラグ
    @State var isActive: Bool = false
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.rootPresentationMode) private var rootPresentationMode: Binding<RootPresentationMode>
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, Asia!")
                Button("1つ戻る", action: {
                    self.presentationMode.wrappedValue.dismiss()
                })
                Button("ルートに戻る", action: {
                    self.rootPresentationMode.wrappedValue.dismiss()
                })
                Button("さらに詳細へ", action: {
                    self.isActive = true
                })
            }
            StatefulNavigationLinkBuilder.build(destination: MoreDetailView(), isActive: $isActive)
                .isDetailLink(false)
                .navigationBarTitle("DetailView")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
