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
            
            ForEach(users){ user in
                VStack(alignment: .leading, spacing: nil){
                    Rectangle().frame(height: 0)
                    NavigationLink(destination:MentorProfileView(user:user)){
                        VStack(alignment: .leading){
                            HStack{
                                Image("\(user.name)")
                                    .resizable()
                                    .foregroundColor(Color.white)
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                    .frame(width: 90, height: 90)
                                    .overlay(Circle().stroke(lineWidth: 1).foregroundColor(Color.gray))
                                
                                VStack(alignment: .leading){
                                    Text("\(user.name)")
                                        .font(.subheadline)
                                    Text("\(user.company)")
                                        .font(.title2)
                                    Text("\(user.job) | \(user.workingYear)년차")
                                        .font(.subheadline)
                                }
                                .padding(.leading, 15.0)
                            }
                            HStack{
                                Image(systemName: "desktopcomputer")
                                    .foregroundColor(Color.blue)
                                    .padding(.all, 10.0)
                                
                                VStack(alignment: .leading){
                                    HStack{
                                        ForEach(user.hashTag, id:\.self){ hash in
                                            Text(hash)
                                                .foregroundColor(.secondary)
                                                .padding(.leading, 20.0)
                                        }
                                    }
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
            }
            
        }
        .navigationTitle("멘토목록")
    }
}




struct MentorView_Previews: PreviewProvider {
    static var previews: some View {
        MentorListView()
    }
}
