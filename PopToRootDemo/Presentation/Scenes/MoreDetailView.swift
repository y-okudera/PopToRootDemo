//
//  MoreDetailView.swift
//  PopToRootDemo
//
//  Created by okudera on 2020/12/22.
//

import SwiftUI

struct MoreDetailView: View {

    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.rootPresentationMode) private var rootPresentationMode: Binding<RootPresentationMode>

    var body: some View {
        VStack {
            Text("Hello, Japan!")
            Button("1つ戻る", action: {
                self.presentationMode.wrappedValue.dismiss()
            })
            Button("ルートに戻る", action: {
                self.rootPresentationMode.wrappedValue.dismiss()
            })
        }
        .navigationBarTitle("MoreDetailView")
    }
}

struct MoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoreDetailView()
    }
}
