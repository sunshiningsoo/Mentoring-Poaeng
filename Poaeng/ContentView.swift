//
//  ContentView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
//    @State var selection:Int = 1
//    var user:User
    
    var body: some View {
        NavigationView {
            TabView(){
                MainView()
                    .id(appState.rootViewId)
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("메인")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("검색")
                    }
                ReservationView()
                    .id(appState.reserveViewId)
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("예약")
                    }
                MyPageView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("마이페이지")
                    }
            }
            .onAppear(){
                UITabBar.appearance().barTintColor = .white
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
