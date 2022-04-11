//  MyPageView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        
        VStack (spacing: +40) {
            //포앵 프리미어 화면 조정
            HStack {
                Text("Poäng")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                
                Text("Premium")
                    .foregroundColor(.blue)
                    .fontWeight(.semibold)
            }
            .padding()
            .frame(height: 1.0)
            Image("profile")
                .resizable()
                .frame(width: 110, height: 100)
                .clipShape(Circle())
            
            Text("박성훈")
                .frame(height: 1.0)
            Text("애플대/컴퓨터공학")
                .frame(height: 1.0)
            
            HStack {
                VStack {
                    Image(systemName:"dollarsign.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("구독")
                        .foregroundColor(.black)
                }
                .padding()
                VStack {
                    Image(systemName:"star")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    
                    Text("즐겨찾기").font(.system(size: 14))
                        .foregroundColor(.black)
                }
                .padding()
                
                VStack {
                    Image(systemName:"text.bubble")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("피드백")
                        .foregroundColor(.black)
                }
                .padding()
                
                VStack {
                    Image(systemName:"gearshape")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("설정")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(width: 70.0, height: 100.0)
            }
            .frame(width: 1000, height: 10.0)
            .font(.system(size: 14))
            .padding()
            
            ScrollView{
            HStack {
                VStack (alignment: .leading) {
                    Text("개인정보")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                        .frame(height: 20.0)
                    Text("프로필 수정")
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .frame(height: 20.0)
                    
                    Text("학교/직장 인증")
                        .frame(height: 20.0)
                }
                .frame(height: 50.0)
                .font(.subheadline)
                .padding()
                Spacer()
            }
            .padding()
            HStack {
                VStack (alignment: .leading) {
                    Text("결제")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                        .frame(height: 20.0)
                    Text("결제수단 등록 및 변경")
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .frame(height: 20.0)
                    
                    Text("쿠폰")
                        .frame(height: 20.0)
                    Text("예치금")
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .frame(height: 20.0)
                    
                }
                .frame(height: 50.0)
                .font(.subheadline)
                .padding()
                Spacer()
            }
            .padding()
            HStack {
                VStack (alignment: .leading) {
                    Text("고객센터")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                        .frame(height: 20.0)
                    Text("1:1 문의")
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .frame(height: 20.0)
                    
                    Text("게시판")
                        .frame(height: 20.0)
                }
                .frame(height: 50.0)
                .font(.subheadline)
                .padding()
                Spacer()
            }
            .padding()
            }
            
        }
    }






struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
}
