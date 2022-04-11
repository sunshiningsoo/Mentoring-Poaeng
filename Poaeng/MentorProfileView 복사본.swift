//
//  MentorProfileView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/07.
//

import SwiftUI

struct MentorProfileView: View {
    @State private var appointmentDate = Date()
    @State private var selectedTime = ""
    let threeMinute: [String] = ["1시", "2시", "3시", "4시", "5시", "6시"]
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 30, to: Date())!
        return min...max
    }
    init() {
            UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.gray

            let attributes: [NSAttributedString.Key:Any] = [
                .foregroundColor : UIColor.white
            ]
            UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        }
    var body: some View {
        ScrollView{
            VStack{
                MentorInfoView()
                IntroduceView()
                MentorReviewView()
                MentorTimetableView()
                VStack{
                    VStack(alignment: .leading){
                        Text("멘토링 일정 선택")
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .font(.largeTitle)
                        DatePicker("당신의 생일을 선택해주세요", selection: $appointmentDate,
                                   in: dateClosedRange,
                                   displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                    }
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
                    Button(action: {
                                //action
                            }) {
                                Text("신청하기")
                                    .font(.title2)
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
        MentorProfileView()
    }
}

struct MentorInfoView: View {
    var body: some View {
        VStack{
            Image("포메")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
            Text("포메")
            Text("애플")
                .fontWeight(.black)
            Text("iOS 개발자 | 3년~5년차")
                .foregroundColor(.secondary)
        }
        .padding(30)
    }
}

struct IntroduceView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("멘토 소개")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding(.bottom)
            Text("안녕하세요. 애플에서 3년차 iOS 개발을 하고 있는 포메입니다. 제가 다 도와줄거에요.")
                .padding(.bottom)
            HStack{
                Text("01.")
                    .font(.title)
                    .foregroundColor(Color.blue)
                Text("애플 개발자 업무")
            }
            .padding(.bottom)
            HStack{
                Text("02.")
                    .font(.title)
                    .foregroundColor(Color.blue)
                Text("최고 권위자 되기")
            }
            .padding(.bottom)
            HStack{
                Text("03.")
                    .font(.title)
                    .foregroundColor(Color.blue)
                Text("면접 경험")
            }
            Text("멘토 태그")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding(.vertical)
            Text("#iOS #개발자 #애플 #네이버")
        }
        .padding()
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
            Text("멘티들의 리뷰")
                .foregroundColor(.blue)
                .padding(.bottom)
            ScrollView(.horizontal){
                HStack{
                    VStack(alignment: .center){
                        Text("조언 감사합니다.")
                            .padding(.vertical, 10)
                        HStack{
                            Text("이용자 X")
                            Spacer(minLength: 30)
                            Text("2020년 03월 21일")
                        }
                        .padding([.leading, .bottom, .trailing], 5)
                    }
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    VStack(alignment: .center){
                        Text("덕분에 합격했습니다.")
                            .padding(.vertical, 10)
                        HStack{
                            Text("이용자 Y")
                            Spacer(minLength: 30)
                            Text("2020년 01월 01일")
                        }
                        .padding([.leading, .bottom, .trailing], 5)
                    }
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    VStack(alignment: .center){
                        Text("이것도 조언이야??")
                            .padding(.vertical, 10)
                        HStack{
                            Text("이용자 Z")
                            Spacer(minLength: 30)
                            Text("2019년 11월 11일")
                        }
                        .padding([.leading, .bottom, .trailing], 5)
                    }
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                }
            }
        }
        .padding()
        .background(Color(hex: 0xededea))
    }
}

struct MentorTimetableView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("멘토링 가능 시간")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding()
            Rectangle().frame(height: 0)
            HStack{
                Text("월요일")
                Spacer()
                    .frame(width: 100.0)
                Text("18:00 ~ 20:00")
            }
            .padding(.horizontal)
            HStack{
                Text("화요일")
                Spacer()
                    .frame(width: 100.0)
                Text("18:00 ~ 20:00")
            }
            .padding(.horizontal)
            HStack{
                Text("수요일")
                Spacer()
                    .frame(width: 100.0)
                Text("18:00 ~ 20:00")
            }
            .padding(.horizontal)
            HStack{
                Text("목요일")
                Spacer()
                    .frame(width: 100.0)
                Text("18:00 ~ 20:00")
            }
            .padding(.horizontal)
            HStack{
                Text("금요일")
                Spacer()
                    .frame(width: 100.0)
                Text("불가")
            }
            .padding(.horizontal)
            HStack{
                Text("토요일")
                Spacer()
                    .frame(width: 100.0)
                Text("불가")
            }
            .padding(.horizontal)
            HStack{
                Text("일요일")
                Spacer()
                    .frame(width: 100.0)
                Text("불가")
            }
            .padding(.horizontal)
            Text("#기본 멘토링 시간은 20분입니다.")
                .padding()
        }
        .background(Color(hex: 0xffffff))
    }
}
