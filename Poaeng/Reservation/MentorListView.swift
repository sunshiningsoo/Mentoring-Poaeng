//
//  MentorView.swift
//  Poaeng
//
//  Created by 최성희 on 2022/04/07.
//

import SwiftUI

struct MentorListView: View {
    var body: some View {
        ScrollView {
            //김최고권위자
            VStack(alignment: .leading, spacing: nil){
                Rectangle().frame(height: 0)
                NavigationLink(destination:MentorProfileView()){
                    VStack(alignment: .leading){
                        HStack{
                            Image("개발자아이콘")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("김최고권위자")
                                    .font(.subheadline)
                                Text("사과회사")
                                    .font(.title2)
                                Text("백엔드 개발자 | 3 ~ 5년차")
                                    .font(.subheadline)
                            }
                            .padding(.leading, 15.0)
                        }
                        HStack{
                            Image(systemName: "desktopcomputer")
                                .foregroundColor(Color.blue)
                                .padding(.all, 10.0)
                            
                            VStack(alignment: .leading){
                                Text("#Spring #AWS #대기업 #현직 #면접 #백엔드업무 #사과회사")
                                    .foregroundColor(.secondary)
                                    .padding(.leading, 20.0)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(15.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
            .padding(10.0)
            .cornerRadius(20)
            
            //박개발
            VStack(alignment: .leading, spacing: nil){
                Rectangle().frame(height: 0)
                VStack(alignment: .leading){
                    HStack{
                        Image("박개발얼굴")
                        
                        VStack(alignment: .leading){
                            Text("박개발")
                                .font(.subheadline)
                            Text("아이오에스회사")
                                .font(.title2)
                            Text("iOS 개발자 | 1 ~ 2년차")
                                .font(.subheadline)
                        }
                        .padding(.leading, 15.0)
                    }
                    HStack{
                        Image("개발자아이콘")
                            .padding(.all, 10.0)
                        
                        VStack(alignment: .leading){
                            Text("#MVVM #Swiftui/obj-c #코딩 #협업 #신입 #공채")
                                .foregroundColor(.secondary)
                                .padding(.leading, 20.0)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(15.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
            .padding(10.0)
            .cornerRadius(20)
            //이주식
            VStack(alignment: .leading, spacing: nil){
                Rectangle().frame(height: 0)
                VStack(alignment: .leading){
                    HStack{
                        Image("이주식얼굴")
                        
                        VStack(alignment: .leading){
                            Text("이주식")
                                .font(.subheadline)
                            Text("망고은행")
                                .font(.title2)
                            Text("망고은행원 | 6 ~ 10년차")
                                .font(.subheadline)
                        }
                        .padding(.leading, 15.0)
                    }
                    HStack{
                        Image("금융아이콘")
                            .padding(.all, 10.0)
                        
                        VStack(alignment: .leading){
                            Text("#망고은행 #은행취업 #금융권 #현직 #인사팀 #면접관")
                                .foregroundColor(.secondary)
                                .padding(.leading, 20.0)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(15.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
            .padding(10.0)
            .cornerRadius(20)
            //강희지
            VStack(alignment: .leading, spacing: nil){
                Rectangle().frame(height: 0)
                VStack(alignment: .leading){
                    HStack{
                        Image("강희지얼굴")
                        
                        VStack(alignment: .leading){
                            Text("강희지")
                                .font(.subheadline)
                            Text("포도에듀")
                                .font(.title2)
                            Text("마케팅부 대리 | 3 ~ 5년차")
                                .font(.subheadline)
                        }
                        .padding(.leading, 15.0)
                    }
                    HStack{
                        Image("교육아이콘")
                            .padding(.all, 10.0)
                        
                        VStack(alignment: .leading){
                            Text("#포도에듀 #퍼포먼스마케팅 #커리어 #브랜드마케팅")
                                .foregroundColor(.secondary)
                                .padding(.leading, 20.0)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(15.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
            .padding(10.0)
            .cornerRadius(20)
            
            //최라인개발자신
            VStack(alignment: .leading, spacing: nil){
                Rectangle().frame(height: 0)
                VStack(alignment: .leading){
                    HStack{
                        Image("최라인개발자신얼굴")
                        
                        VStack(alignment: .leading){
                            Text("최라인개발자신")
                                .font(.subheadline)
                            Text("갓전자")
                                .font(.title2)
                            Text("AI/ML 개발자 | 6 ~ 10년차")
                                .font(.subheadline)
                        }
                        .padding(.leading, 15.0)
                    }
                    HStack{
                        Image("개발자아이콘")
                            .padding(.all, 10.0)
                        
                        VStack(alignment: .leading){
                            Text("#Vision #Data_Science #비전공 #연구소 #ai개발자")
                                .foregroundColor(.secondary)
                                .padding(.leading, 20.0)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(15.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
            .padding(10.0)
            .cornerRadius(20)
            
            
            //            TabView {
            //                //탭뷰는 이하와 같은 양식으로 작성하고 작동합니다.
            //                //MainView, SearchView, ReservationView, MyPageView는 각각 해당 버튼을 클릭하면 나타날 View를 의미하며 다른 스위프트 파일로 구현되어있습니다.
            //                View1()
            //                    .tabItem{
            //                        Image(systemName: "house.fill")
            //                        Text("메인")
            //                    }
            //                SearchView()
            //                    .tabItem {
            //                        Image(systemName: "magnifyingglass")
            //                        Text("검색")
            //                    }
            //                ReservationView()
            //                    .tabItem {
            //                        Image(systemName: "calendar")
            //                        Text("예약")
            //                    }
            //
            //                MyPageView()
            //                    .tabItem {
            //                        Image(systemName: "person")
            //                        Text("마이페이지")
            //                    }
            //            }
            
            
        }
        .navigationTitle("멘토목록")
    }
}




struct MentorView_Previews: PreviewProvider {
    static var previews: some View {
        MentorListView()
    }
}
