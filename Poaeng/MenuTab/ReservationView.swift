//
//  ReservationView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct ReservationView: View {
    @State var completeBool:Bool = false
    @State private var isShowingDetail = false
    
    var body: some View {
        NavigationView{
            VStack {
                
                if completeBool == false{
                    HStack{
                        Button("예정 상담"){
                            completeBool = false
                        }
                        .padding()
                        .background(Capsule().stroke(lineWidth: 1))
                        .foregroundColor(.blue)
                        
                        Button("지난 상담"){
                            completeBool = true
                        }
                        .padding()
                        .foregroundColor(.blue)
                    }
                    .padding(.top)
                }else if completeBool == true{
                    HStack{
                        Button("예정 상담"){
                            completeBool = false
                        }
                        .padding()
                        .foregroundColor(.blue)
                        
                        Button("지난 상담"){
                            completeBool = true
                        }
                        .padding()
                        .background(Capsule().stroke(lineWidth: 1))
                        .foregroundColor(.blue)
                    }
                    .padding(.top)
                }
                
                
                Divider()
                ScrollView{
                    ForEach(users){ user in
                        if user.mentoringStatus == completeBool{
                            HStack{
                                NavigationLink(destination: UserDetail(user:user)){
                                    UserRow(user:user)
                                }
                                if user.mentoringStatus == false{
                                    NavigationLink(destination: MentoringScreenView(isShowingDetail:$isShowingDetail, user:user), isActive: $isShowingDetail){
                                        Text("입장하기")
                                            .offset(y:-14)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("")
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
