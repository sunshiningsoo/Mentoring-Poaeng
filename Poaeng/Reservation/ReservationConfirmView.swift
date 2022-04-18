//
//  ReservationConfirmView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/11.
//

import SwiftUI

struct ReservationConfirmView: View {
//    @Environment(\.presentationMode) var presentation
//    @EnvironmentObject var appState: AppState
    var user:User
    
    var body: some View {
        VStack{
            VStack{
                Image("\(user.name)")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                Text("\(user.name)")
                Text("\(user.company)")
                    .fontWeight(.black)
                Text("\(user.job) | \(user.workingYear)년차")
                    .foregroundColor(.secondary)
            }
            .padding(30)
            Text("멘토링 예약 신청이 완료되었습니다.")
                .font(.title2)
                .padding()
            
            NavigationLink(destination: AskToMentorView()){
                Text("확인")
                    .font(.title2)
                    .padding(15.0)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(.top, 50.0)
            }
            
            
            .navigationBarHidden(true)
            
            
        }
    }
}

struct ReservationConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationConfirmView(user: users[0])
    }
}
