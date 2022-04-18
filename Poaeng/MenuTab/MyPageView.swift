//  MyPageView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack(spacing: 50){
//            HStack{
//                Image(systemName: "chevron.left")
//                    .resizable(resizingMode: .tile)
//                    .padding(.leading)
//                    .foregroundColor(.blue)
//                    .frame(width: 26.0, height: 23.0)
//                Text("박성훈님의 마이페이지")
//                    .font(.system(size:20,weight:.regular))
//                    .foregroundColor(Color.blue)
//                    .multilineTextAlignment(.leading)
//                    Spacer()
//            }
            HStack {
                Text("Poäng")
                    .foregroundColor(.black)
                    .font(.system(size:23,weight:.medium))
                
                Text("Premium")
                    .foregroundColor(.blue)
                    .font(.system(size:23,weight:.medium))
            }

            .padding(.top)
            .frame(height: 1.0)
            VStack{
            Image("박성훈")
                .resizable()
                .frame(width: 140, height: 140)
                .overlay(Circle().stroke(lineWidth: 1).foregroundColor(Color.gray))
            Text("박성훈")
                    .font(.system(size:22,weight:.medium))
                    .fontWeight(.heavy)
                Text("애플대/컴퓨터공학")
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                .frame(height: 1.0)
            }
            VStack{
            HStack {
                VStack {
                    Image(systemName:"dollarsign.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("구독")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding()
                VStack {
                    Image(systemName:"star")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    
                    Text("즐겨찾기").font(.system(size: 14))
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding()
                
                VStack {
                    Image(systemName:"text.bubble")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("피드백")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding()
                
                VStack {
                    Image(systemName:"gearshape")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Text("설정")
                        .fontWeight(.heavy)
                }
                .padding()
            }
            .frame(height: 50.0)
            .font(.system(size: 14))
            .padding()
            
            ScrollView{
                HStack {
                    VStack (alignment: .leading) {
                        Text("계정")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(height: 26.0)
                        Text("소속회사 및 학교 인증")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing)
                            .frame(height: 15.0)
                        
                        Text("회원관리")
                            .fontWeight(.medium)
                            .frame(height: 15.0)
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
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .multilineTextAlignment(.leading)
                            .frame(height: 26.0)
                        Text("결제수단 등록 및 변경")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing)
                            .frame(height: 15.0)
                        
                        Text("쿠폰")
                            .fontWeight(.medium)
                            .frame(height: 15.0)
                        Text("예치금")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing)
                            .frame(height: 15.0)
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
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .multilineTextAlignment(.leading)
                            .frame(height: 26.0)
                        Text("1:1 문의")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing)
                            .frame(height: 15.0)
                        
                        Text("게시판")
                            .fontWeight(.medium)
                            .frame(height: 15.0)
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
    }
    
    
}
    
    
    
struct MyPageView_Previews: PreviewProvider {
        static var previews: some View {
            MyPageView()
        }
    }
