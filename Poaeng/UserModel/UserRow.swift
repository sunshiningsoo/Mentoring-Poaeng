//
//  MentorRow.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/07.
//

import SwiftUI

struct UserRow: View {
    var user: User
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image("\(user.name)")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.white))
                    .padding(.trailing)
                VStack{
                    HStack{
                        if user.mentor == true{
                            Text("🌲\(user.company)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        } else {
                            Text("🌱\(user.company)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        Text("\(user.name)")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                    //Spacer()
                    Text("\(user.job)  |  \(user.workingYear)년차")
                        .font(.subheadline)
                        .foregroundColor(Color.secondary)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    VStack{
                        user.mentoringStatus==false ? Text("").foregroundColor(.black) : Text("멘토링 완료")
                            .foregroundColor(.black)
                    }
                }
                .padding(.leading, -20)
            }
            .padding()
            //Rectangle().frame(height: 1)
        }
        .padding(15.0)
    }
}

struct MentorRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user:users[2])
    }
}
