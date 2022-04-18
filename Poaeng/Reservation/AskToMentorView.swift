//
//  AskToMentorView.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/11.
//
import SwiftUI

struct AskToMentorView: View {
    @State private var totalChars = 0
    @State private var text1=""
    @State private var lastText = ""
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var appState: AppState
    
    @State private var text: String = "질문은 다음의 사항을 고려해주세요 \n1. 너무 사적인 질문은 삼가주세요. \n2. 회사의 기밀과 관련된 질문은 삼가주세요. \n3. 악의적 괴롭힘, 조롱은 삼가주세요. \n4. 1~3번에 해당하지 않는 물어보고 싶은 것은 다 물어보세요."
    var body: some View {
        VStack{
            HStack{
                Spacer()
                    .frame(width:120)
                Text("사전 질문 남기기")
                    .font(.system(size:23,weight:.regular))
                Spacer()
                Button("완료"){
                    appState.rootViewId = UUID()
                }
                .font(.system(size:17,weight:.bold))
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(11)
                Spacer()
                    .frame(width:10)
            }
            Rectangle().fill(Color.gray)
                .frame(height:1)
            Spacer()
                .frame(height:20)
            HStack {
                Spacer()
                    .frame(width:190)
                ProgressView("Chars:\(totalChars)/1000",value:Double(totalChars),total:150)
                    .frame(width:108)
                    .padding(.leading, 50.0)
                .accentColor(.red)
            }
            HStack(alignment: .center){
                Spacer()
                    .frame(width:22)
                GeometryReader { geo in
                    TextEditor(text: $text)
                        .padding(.vertical, 40)
                        .padding(.horizontal,20)
                        .foregroundColor(.secondary)
                        .lineSpacing(5) //줄 간격
                        .frame(width:350, height: 600)
                        .border(Color.gray.opacity(0.5), width: 2)
                        .cornerRadius(5)
                        .onTapGesture {
                            text = ""
                        }
                        .onChange(of: text, perform: {  text in totalChars = text.count})
                }
            }
            .padding([.bottom, .trailing])
//            Button("완료"){
//                appState.rootViewId = UUID()
//            }
//            .font(.system(size:17,weight:.bold))
//                .padding(10)
//                .foregroundColor(Color.white)
//                .background(Color.blue)
//                .cornerRadius(11)
        }
        .navigationBarHidden(true)
    }
}

struct AskToMentorView_Previews: PreviewProvider {
    static var previews: some View {
        AskToMentorView()
    }
}
