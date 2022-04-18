////import SwiftUI
////
////struct CallView: View {
////
////    @State var timeRemaining = 1200
////    @State var timerunnig = true
////
////
////    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
////
////    func convertSecondsToTime(timeInSeconds : Int) -> String {
////        let minutes = timeInSeconds / 60
////
////        let seconds = timeInSeconds % 60
////
////        return String(format: "%02i:%02i", minutes,seconds)
////    }
////
////    var body: some View {
////        HStack {
////            Text(convertSecondsToTime(timeInSeconds : timeRemaining))
////
////                .font(.system(size: 20))
////                .fontWeight(.heavy)
////
////                .onReceive(timer) { _ in
////                    if timeRemaining > 0 && timerunnig {
////                        timeRemaining -= 1
////                    }
////                    else {
////                        timerunnig = false
////                    }
////                }
////            Spacer()
////
////            Button("시간 추가"){
////                timeRemaining += 300
////            }
////
//////            HStack(spacing: 40) {
//////                Button("Start") {
//////                    timerunnig = true
//////                }
//////                Button("Add Time") {
//////                    timeRemaining += 300
//////                }.foregroundColor(.green)
//////                Button("Stop") {
//////                    timerunnig = false
//////                }.foregroundColor(.red)
//////            }
////
////        }
////    }
////
////}
////
////
////struct CallView_Previews: PreviewProvider {
////    static var previews: some View {
////        CallView()
////    }
////}
//
//
//import SwiftUI
//
//struct CallView: View {
//
//    //제스쳐
//    @State var offset: CGFloat = 0
//    @State var lastOffset: CGFloat = 0
//    @GestureState var gestureOffset: CGFloat = 0
//
//    var body: some View {
//        ZStack{
//            GeometryReader{ geo in
//                VStack {
//                    //상단 버튼
//                    HStack{
//                        Button(action: {
//
//                        }) {
//                            HStack{
//                                Image(systemName: "chevron.left").padding(.leading, 4.0)
//                                Text("뒤로가기")
//                            }
//                        }
//                        Spacer()
//                        Spacer()
//
//                        Button(action: {
//
//                        }) {
//                            Text("신고하기")
//                        }.padding(.trailing, 5.0)
//                    }
//                    //통화 상대방 얼굴 화면
//                    Image("통화")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: geo.size.width)
//                        .clipped()
//                        .overlay(
//                            //내 얼굴 화면
//                            Image("통화")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100.0, height: 170.0)
//                                .padding(5.0) , alignment: .bottomTrailing
//                        )
//                    //하단 버튼
//                    HStack{
//                        Button(action: {
//
//                        }) {
//                            VStack{
//                                Image(systemName: "speaker.slash.fill")
//                                Text("Mute")
//                            }.padding()
//                        }
//                        Spacer()
//
//                        TimerView()
//                    }
//
//                }
//            }
//            GeometryReader {proxy -> AnyView in
//
//                let height = proxy.frame(in: .global).height
//                return AnyView(
//
//                    ZStack {
//                        BlurView(style: .systemThinMaterialDark)
//
//                        VStack{
//                            Capsule()
//                                .fill(Color.white)
//                                .frame(width: 50.0, height: 4)
//                                .padding(4)
//
//
//                            Text("사전질문")
//                                .font(.title3)
//                                .fontWeight(.bold)
//                                .foregroundColor(Color.white)
//
//                            ScrollView {
//                                Text("안녕하세요, 애플 아카데미 지원과 관련해 여쭙고 싶은 부분이 있어서 챗드립니다. 전공은 컴퓨터 쪽은 아니지만 프로그래밍을 배워보고 싶은 생각은 항상 갖고 있었습니다. 지금은 일반 회사에서 마케터로 일하고 있는데 애플 아카데미에 가면 어떤 것을 배울 수 있는지, 커리큘럼이 어떻게 되는지 궁금합니다. 그리고 무엇보다 지원할 때 어떻게 저를 어필해야 하는지, 기존 개발 지식은 필요 없는지, OO님은 지원하실 때 어떤 점을 강조하셨는지 알려주시면 준비하는데 큰 도움이 될 것 같습니다.")
//                                    .font(.title3)
//                                    .foregroundColor(Color.white)
//                                    .frame(width: 360, height: 700, alignment: .top)
//                                    .lineSpacing(15)
//                                    .padding()
//                            }
//
//
//                        }
//                        .frame(maxHeight: .infinity, alignment: .top)
//
//                    }
//                        .offset(y: height - 50.0)
//                        .offset(y: offset)
//                        .gesture(DragGesture() .updating($gestureOffset, body: {value, out, _ in
//
//                            out = value.translation.height
//                            onChange()
//
//                        })
//                                 //드래그했다가 놓으면 되돌아가는 기능
//                                    .onEnded({value in
//
//                                        let maxHeight = height - 100
//
//                                        withAnimation{
//
//                                            if -offset > 100 && -offset < maxHeight / 2{
//                                                offset = -(maxHeight / 2)
//                                            } else if -offset > maxHeight / 2{
//                                                offset = -maxHeight
//                                            } else {
//                                                offset = 0
//                                            }
//                                        }
//                                        lastOffset = offset
//
//                                    })
//
//                                )
//                )
//
//            }.ignoresSafeArea(.all, edges: .bottom)
//
//
//
//        }
//    }
//
//    func onChange() {
//        DispatchQueue.main.async {
//            self.offset = gestureOffset + lastOffset
//        }
//
//    }
//
//}
//
//
//
//struct CallView_Previews: PreviewProvider {
//    static var previews: some View {
//        CallView()
//            .previewDevice("iPhone 13")
//    }
//}
