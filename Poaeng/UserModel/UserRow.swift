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
        VStack(alignment: .leading, spacing:nil){
            VStack(alignment:.leading){
                HStack{
                    Image("개발자아이콘")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading){
                        Text("\(user.name)")
                            .font(.title2)
                        Text("\(user.company)")
                            .font(.title3)
                        Text("경력 : \(user.workingYear)년차")
                            .font(.subheadline)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    VStack{
//                        if user.mentoringStatus==false{
//                                    Button("입장하기"){
//                                }
//                        }
                            user.mentoringStatus==false ? Text("").foregroundColor(.black) : Text("멘토링 완료")
                                .foregroundColor(.black)
                        }
                    }
                
                HStack{
                    Image(systemName: "display")
                    HStack {
                        ForEach(user.hashTag, id: \.self){hash in
                            Text("\(hash)")
                                .foregroundColor(.black)
                                .font(.subheadline)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
        }
        //        .frame(width:UIScreen.main.bounds.width - 70)
        //        .padding()
        //        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
        //        .cornerRadius(20)
        .padding(15.0)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.933, green: 0.997, blue: 0.986), Color.white]), startPoint: .topLeading, endPoint: .bottomLeading))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 0.933, green: 0.997, blue: 0.986), lineWidth: 1))
        .padding(10.0)
        .cornerRadius(20)
        
    }
        
}

struct MentorRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user:users[2])
    }
}
