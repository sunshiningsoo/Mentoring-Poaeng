//
//  ReservationView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var appState: AppState
    @State var completeBool:Bool = false
    
    var body: some View {
            VStack {
                if completeBool == false{
                    HStack{
                        Spacer()
                        VStack{
                            Button("예정멘토링"){
                                completeBool = false
                            }
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight:.bold))
                            Rectangle().fill(.blue).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                        VStack{
                            Button("지난멘토링"){
                                completeBool = true
                            }
                            .foregroundColor(.black)
                            .font(.system(size:20,weight:.regular))
                            Rectangle().fill(.white).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                        VStack{
                            Text("연결중인멘토링")
                                .lineLimit(1)
                                .font(.system(size:20,weight:.regular))
                            Rectangle().fill(.white).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                    }
                    .padding(.top)
                } else if completeBool == true{
                    HStack{
                        Spacer()
                        VStack{
                            Button("예정멘토링"){
                                withAnimation{
                                    completeBool = false
                                }
                            }
                            .foregroundColor(.black)
                            .font(.system(size:20,weight:.regular))
                            Rectangle().fill(.white).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                        VStack{
                            Button("지난멘토링"){
                                completeBool = true
                            }
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight:.bold))
                            Rectangle().fill(.blue).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                        VStack{
                            Text("연결중인멘토링")
                                .lineLimit(1)
                                .font(.system(size:20,weight:.regular))
                            Rectangle().fill(.white).frame(width: 90.0, height:3.0)
                        }
                        Spacer()
                    }
                    .padding(.top)
                }
                Divider()
                ScrollView{
                    ForEach(users){ user in
                        if user.mentoringStatus == completeBool{
                            HStack{
                                NavigationLink(destination: MentorProfileView(user:user)){
                                    UserRow(user:user)
                                }
                                if user.isReadyForMentoring == true{
                                    NavigationLink(destination:MentoringScreenView(user:user)){
                                        Text("입장")
                                            .font(.title3)
                                            .padding()
                                            .foregroundColor(Color.white)
                                            .frame(width: 100.0, height: 48.0)
                                            .background(Color.blue)
                                            .cornerRadius(100)
                                            .padding(.trailing, 10.0)
                                    }
                                    Spacer()
                                } else {
                                    Spacer()
                                    Text("사전 질문")
                                        .foregroundColor(.blue)
                                        .offset(x:-10)
                                        
                                        .padding(.trailing)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 100)
                                                    .stroke(Color.blue, lineWidth: 1)
                                                    .frame(width: 100, height: 48)
                                                    .padding(.trailing, 15.0)
                                                    .offset(x:-10)
                                            )
                                    Spacer()
                                }
                            }
                            .padding(.vertical, -15.0)
                            Rectangle()
                                .frame(height: 1.0)
                                .foregroundColor(Color(hex: 0xd3d7d4))
                                .padding(.horizontal)
                        }
                    }
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}


struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
        
    }
}
