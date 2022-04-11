//
//  SearchView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchKeyword:String
    var body: some View {
        VStack{
            HStack{
                TextField(" 검색어를 입력하세요", text:$searchKeyword)
                    .clipShape(Capsule())
                    .cornerRadius(20)
                    .padding(.vertical)
                    .background(.gray)
                    .opacity(0.5)
                    .padding()

                Spacer()

                Image(systemName: "magnifyingglass")
                    .padding()
            }

            Spacer()
        }

//        NavigationView{
//            List{
//                ForEach(users){user in
//                    if user.filter{user.contains(searchKeyword)}{
//                        Text("\(user.name)")
//                    }
//
//                }
//            }.searchable(text: $searchKeyword)
//        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchKeyword: .constant(" 검색어를 입력하세요"))
    }
}
