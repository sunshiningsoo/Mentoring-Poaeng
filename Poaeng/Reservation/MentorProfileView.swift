//
//  MentorProfileView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/07.
//
import SwiftUI

struct MentorProfileView: View {
//    @EnvironmentObject var appState: AppState
    
    
    @State private var appointmentDate = Date()
    @State private var selectedTime = ""
    let threeMinute: [String] = ["1시", "2시", "3시", "4시", "5시", "6시"]
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 30, to: Date())!
        return min...max
    }
    
    var user:User
    
    var body: some View {
        ScrollView{
            VStack{
                MentorInfoView(user: user)
                IntroduceView(user:user)
                MentorReviewView()
                MentorTimetableView()
                VStack{
                    VStack(alignment: .leading){
                        Text("멘토링 일정 선택")
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .font(.system(size:20,weight:.bold))
                        DatePicker("당신의 생일을 선택해주세요", selection: $appointmentDate,
                                   in: dateClosedRange,
                                   displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                    }
                    .padding()
                    Picker(selection: $selectedTime,
                                label: Text("TimePicker"),
                                content: {
                                    ForEach(threeMinute.indices) { index in
                                        Text(threeMinute[index])
                                            .tag(threeMinute[index])
                                    }
                            })
                                .pickerStyle(SegmentedPickerStyle())
                                .padding()
                    NavigationLink(destination:ReservationConfirmView(user:user)){
                        Text("신청하기")
                            .font(.system(size:20,weight:.bold))
                            .padding(13.0)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct MentorProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MentorProfileView(user: users[0])
    }
}

struct MentorInfoView: View {
    var user:User
    var body: some View {
        VStack{
            Image("\(user.name)")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.gray))
            Spacer()
            Text("\(user.name)")
                .font(.system(size:14,weight:.bold))
            Spacer()
            Text("\(user.company)")
                .font(.system(size:18,weight:.bold))
            Spacer()
            Text("\(user.job) | \(user.workingYear)년차")
                .font(.system(size:14,weight:.regular))
        }
    }
}

struct IntroduceView: View {
    var user:User
    var body: some View {
        VStack(alignment: .leading){
            
            Text("멘토 소개")
                .font(.system(size:20,weight:.bold))
                .foregroundColor(Color.blue)
                .padding(.leading)
            Spacer()
            Text("안녕하세요. \(user.company) \(user.workingYear)년차 \(user.job)을 하고 있는 \(user.name)입니다.          ")
                .font(.system(size:14,weight:.regular))
                .padding(.leading)
            Text("제가 다 도와줄께요")
                .font(.system(size:14,weight:.regular))
                .padding(.leading)
            Spacer()
                .frame(height: 30.0)
            HStack{
                Text("01.")
                    .font(.system(size:14,weight:.bold))
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                Text("\(user.job) 업무")
                    .font(.system(size:14,weight:.regular))
                    .padding(.trailing)
            }
            Spacer()
                .frame(height: 15.0)
            HStack{
                Text("02.")
                    .font(.system(size:14,weight:.bold))
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                Text("최고 권위자 되기")
                    .font(.system(size:14,weight:.regular))
                    .padding(.trailing)
            }
            Spacer()
                .frame(height: 15.0)
            
            HStack{
                Text("03.")
                    .font(.system(size:14,weight:.bold))
                    .foregroundColor(Color.blue)
                    .padding(.leading)
                Text("면접 경험")
                    .font(.system(size:14,weight:.regular))
                    .padding(.trailing)
            }
        }
        VStack(alignment: .leading) {
            Spacer()
                .frame(height: 30.0)
            HStack{
                Spacer()
            Text("멘토 태그")
                .font(.system(size:20,weight:.bold))
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(.leading)
                Spacer()
                    .frame(height:40)
            }
            HStack{
                Spacer()
                    .frame(width:10)
                ForEach(user.hashTag, id:\.self){ hash in
                    Text(hash)
                        .font(Font.system(size: 14).italic())
                        .padding(.leading)
                }
            }
        }
        
        
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct MentorReviewView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("  멘티들의 리뷰")
                .font(.system(size:20,weight:.bold))
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(.trailing)
                
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    VStack(alignment: .leading){
                        Rectangle().fill(Color.white)
                            .frame(height:30)
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.system(size:20))
                            .foregroundColor(Color.black)
                            .padding(.vertical, 15)
                        Text("  정말 좋은 조언 감사합니다!")
                            .font(.system(size:12,weight:.regular))
                        Text("  꼭 합격 할께요!!!")
                            .font(.system(size:12,weight:.regular))
                        HStack(alignment: .center){
                            Text(" 꿈**님")
                                .font(.system(size:12,weight:.bold))
                            Spacer(minLength: 20)
                    
                            Text("20년 03월 21일")
                                .font(.system(size:12,weight:.bold  ))
                        
                        }
                        
                    .padding(15)
                        Rectangle()
                            .fill(.white)
                            .frame(height:30)
                    }
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
                    
                    .frame(width:314, height: 130)
                    
                    VStack(alignment: .leading){
                        Rectangle().fill(Color.white)
                            .frame(height:30)
                        Image(systemName: "hand.thumbsup")
                            .font(.system(size:20))
                            .foregroundColor(Color.black)
                            .padding(.vertical, 10)
                        Text("  멘토님! 따뜻하게 하나하나 잘 설명해 주셔서!")
                            .font(.system(size:12,weight:.regular))
                        Text("  정말로 감사합니다.")
                            .font(.system(size:12,weight:.regular))
                        HStack(alignment: .top){
                            Text(" 나**님")
                                .font(.system(size:12,weight:.bold))
                            Spacer(minLength: 20)
                    
                            Text("22년 04월 10일")
                                .font(.system(size:12,weight:.bold  ))
                        }
                        .padding(15)
                            Rectangle()
                                .fill(.white)
                                .frame(height:30)
                    }
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
                    .frame(width:314, height: 110)
                    VStack(alignment: .leading){
                        Rectangle().fill(Color.white)
                            .frame(height:30)
                        Image(systemName: "hand.thumbsup")
                            .font(.system(size:20))
                            .foregroundColor(Color.black)
                            .padding(.vertical, 10)
                        Text("  멘토님 덕분에")
                            .font(.system(size:12,weight:.regular))
                        Text("  합격했습니다!! 감사합니다!!!")
                            .font(.system(size:12,weight:.regular))
                        HStack(alignment: .top){
                            Text(" 멘**님")
                                .font(.system(size:12,weight:.bold))
                            Spacer(minLength: 20)
                    
                            Text("2019년 02월 26일")
                                .font(.system(size:12,weight:.bold  ))
                        }
                        .padding(15)
                            Rectangle()
                                .fill(.white)
                                .frame(height:30)
                    }
                
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
                    .frame(width:314, height: 10)
                }
            }
           
        }
        .padding()
        .frame(width: 400.0, height: 200.0)
        .background(Color(hex: 0xF5F5F5))
    }
}

struct MentorTimetableView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("멘토링 가능 시간")
                .font(.system(size:20,weight:.bold))
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(.leading)
            Rectangle().frame(height: 0)
            HStack{
                Text("월요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("18:00 ~ 20:00")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("화요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("18:00 ~ 20:00")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("수요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("18:00 ~ 20:00")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("목요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("18:00 ~ 20:00")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("금요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("불가")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("토요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("불가")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            HStack{
                Text("일요일")
                    .font(.system(size:16,weight:.bold))
                Spacer()
                    .frame(width: 20.0)
                Text("불가")
                    .font(.system(size:16,weight:.medium))
            }
            .padding(.horizontal)
            Text("#기본 멘토링 시간은 20분입니다.")
                .font(.system(size:16,weight:.bold))
                .padding()
        }
        .background(Color(hex: 0xffffff))
    }
}
