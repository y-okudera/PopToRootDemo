//
//  StatefulNavigationLinkBuilder.swift
//  PopToRootDemo
//
//  Created by okudera on 2020/12/22.
//

import SwiftUI

// ラベルを設置せず、isActiveの変更をトリガーとするNavigationLinkのビルダー
enum StatefulNavigationLinkBuilder<V: View> {

    static func build(destination: V, isActive: Binding<Bool>) -> NavigationLink<EmptyView, V> {
        NavigationLink(destination: destination, isActive: isActive, label: EmptyView.init)
    }
}
