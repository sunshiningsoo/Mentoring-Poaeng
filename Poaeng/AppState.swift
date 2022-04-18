//
//  AppState.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/11.
//

import Foundation

//https://www.cuvenx.com/post/swiftui-pop-to-root-view

final class AppState : ObservableObject {
        @Published var rootViewId = UUID()
        @Published var reserveViewId = UUID()
}
