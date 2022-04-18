//
//  SearchView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//
import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("글 제목, 내용, 해시태그", text: $text)
                //바뀐 부분!!
                    .foregroundColor(.primary)
                
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}

struct SearchView: View {
    let array = [
        "박선후", "포뇨", "하울", "소피아", "캐시퍼", "소스케",
        "치히로", "하쿠", "가오나시", "제니바", "카브", "마르클",
        "토토로", "사츠키", "지브리", "스튜디오", "캐릭터", "이후현"
    ]
    
    @State private var searchText = ""
//    var user:User
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            
            List {
//                ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
//                    searchText in NavigationLink(destination:MentorProfileView(user: users[0])){
//                        Text("\(searchText)")
//                    }
                ForEach(users, id:\.id){user in
                    if (user.name.hasPrefix(searchText) && searchText != "") || (user.hashTag.contains("#\(searchText)")){
                        NavigationLink(destination:MentorProfileView(user:user)){
                            Text("\(user.name)")
                        }
                    }
                }
                }
    
            
            
            
        } //리스트의 스타일 수정
        .listStyle(PlainListStyle())
        //화면 터치시 키보드 숨김
    }
    
}

//캔버스 컨텐츠뷰
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
//            .environment(\.colorScheme, .dark)
    }
}


//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
