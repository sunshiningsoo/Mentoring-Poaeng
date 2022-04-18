import SwiftUI

struct MentoringScreenView: View {
    
    @Environment(\.presentationMode) var presentation
    var user:User
    //제스쳐
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    
    
    @State var micOn:Bool = true //mic 아이콘 변경
    @State var questionOn:Bool = false // 사전질문 오픈
    
    
//    @Binding var isShowingDetail:Bool
//    @State private var showingAlert = false
    
    var body: some View {
        ZStack{
            
            GeometryReader{ geo in
                
                VStack {
                    //상단 버튼
                    HStack{
                        Button(action: {
                            
//                            var thisuser = user.changeMentoringStatus()
                            
                            presentation.wrappedValue.dismiss()
                            
                        }) {
                            HStack{
                                Image(systemName: "chevron.left").padding(.leading, 4.0)
                                Text("나가기")
                                    .foregroundColor(.blue)
                            }
                        }
                        
                        Spacer()
                        Spacer()
                        TimerView()
                            .padding(.trailing, 5.0)
                        
                    }
                    
                    ZStack {
                        
                        
                        //통화 상대방 얼굴 화면
                        Image("\(user.name)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width)
                            .clipped()
                            .overlay(
                                
                                //내 얼굴 화면
                                Image("박성훈")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0, height: 170.0)
                                    .padding(5.0) , alignment: .bottomTrailing
                            )

                        if questionOn {
                        Text("안녕하세요, 애플 아카데미 지원과 관련해 여쭙고 싶은 부분이 있어서 챗드립니다. 전공은 컴퓨터 쪽은 아니지만 프로그래밍을 배워보고 싶은 생각은 항상 갖고 있었습니다. 지금은 일반 회사에서 마케터로 일하고 있는데 애플 아카데미에 가면 어떤 것을 배울 수 있는지, 커리큘럼이 어떻게 되는지 궁금합니다. 그리고 무엇보다 지원할 때 어떻게 저를 어필해야 하는지, 기존 개발 지식은 필요 없는지, OO님은 지원하실 때 어떤 점을 강조하셨는지 알려주시면 준비하는데 큰 도움이 될 것 같습니다.")
                                .padding()
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.5))
                            .frame(width: geo.size.width, height: 650)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .lineSpacing(15)
                        }
                    }

                    //하단 버튼
                    HStack{
                        Button(action: {
                            micOn.toggle()
                        }) {
                            VStack{
                                Image(systemName: micOn==true ? "mic" : "mic.slash")
                                Text("음소거")
                            }.padding()
                            
                            Spacer()
                            
                            Button (action: {
                                questionOn.toggle()
                            }) {
                                VStack{
                                    Image(systemName:questionOn == true ? "doc.plaintext.fill": "doc.plaintext")
                                    Text("사전질문")
                                }
                            }
                            
                        }
                    }
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
    
}



struct MentoringScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MentoringScreenView(user: users[0])
//    isShowingDetail: .constant(true)
            .previewDevice("iPhone 13")
    }
}
