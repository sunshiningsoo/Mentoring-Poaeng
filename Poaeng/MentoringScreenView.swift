//
//  MetoringScreenView.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/07.
//

import SwiftUI

struct MentoringScreenView: View {
    @State var micOn:Bool = true
    @Binding var isShowingDetail:Bool
    @State var user:User
    
    var body: some View {
        
        VStack {
            Text(user.mentoringStatus==true ? "true": "false")
            HStack{
                Button("나가기") {
                    user.changeMentoringStatus()
                    print(user.mentoringStatus==true ? "true": "false")
                    isShowingDetail.toggle()
//                    DispatchQueue.main.asyncAfter(deadline: .now()+2){
//                        
//                    }
                    //https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui
                }
                .foregroundColor(.red)
                
                Spacer()
                HStack{
                    Image(systemName: "timer")
                    CallView()
                }
            }
            .padding()
            
            
            ZStack {
                Image("감자")
                    .resizable().frame(height: UIScreen.main.bounds.height - 250)
                Image("포메")
                    .resizable().frame(width:100, height: 200)
                    .offset(x:UIScreen.main.bounds.width/3, y:UIScreen.main.bounds.height/5)
            }
            
            HStack{
                VStack{
                    Image(systemName: micOn==true ? "mic" : "mic.slash")
                    Button(action: {micOn = !micOn}){
                        Text("this")
                    }
                }
                
                Spacer()
                
                VStack{
                    Image(systemName: "exclamationmark.circle")
                    Button("신고하기"){
                    }
                }
            }
            .padding()
        }
//        .navigationBarTitle("나가기")
        .navigationBarHidden(true)
    }
}

struct MetoringScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MentoringScreenView(isShowingDetail: .constant(true), user: users[0])
    }
}
