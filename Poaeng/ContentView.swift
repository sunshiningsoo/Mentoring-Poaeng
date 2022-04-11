//
//  ContentView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    @State var searchKeyword:String
    var body: some View {
        TabView {
            //탭뷰는 이하와 같은 양식으로 작성하고 작동합니다.
            //MainView, SearchView, ReservationView, MyPageView는 각각 해당 버튼을 클릭하면 나타날 View를 의미하며 다른 스위프트 파일로 구현되어있습니다.
            MainView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("메인")
                }
            SearchView(searchKeyword: $searchKeyword)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
            ReservationView()
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchKeyword: "키워드를 입력하세요")
    }
}
