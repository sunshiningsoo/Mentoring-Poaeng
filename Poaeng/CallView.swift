//
//  CallView.swift
//  Poaeng
//
//  Created by Youngwoong Choi on 2022/04/07.
//

import SwiftUI

struct CallView: View {
    
    //제스쳐
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0

    
    var body: some View {
        ZStack{
            
        GeometryReader{ geo in
            
            VStack {
                //상단 버튼
                HStack{
                    Button(action: {
                        
                    }) {
                        HStack{
                            Image(systemName: "chevron.left").padding(.leading, 4.0)
                            Text("뒤로가기")
                        }
                    }
                    Spacer()
                    TimerView()
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                            Text("신고하기")
                    }.padding(.trailing, 5.0)
                    }
                //통화 상대방 얼굴 화면
                Image("통화")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width)
                    .clipped()
                    .overlay(
                        //내 얼굴 화면
                    Image("통화")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 170.0)
                        .padding(5.0) , alignment: .bottomTrailing
                )
                //하단 버튼
                HStack{
                    Button(action: {
                        
                    }) {
                        VStack{
                            Image(systemName: "speaker.slash.fill")
                            Text("Mute")
                        }.padding()
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image(systemName: "hourglass.badge.plus")
                            Text("More Time")
                        }.padding()
                    }
                }
                
            }
        }
            GeometryReader {proxy -> AnyView in
                
                let height = proxy.frame(in: .global).height
                
                
                
                return AnyView(
                    
                    ZStack {
                        BlurView(style: .systemThinMaterialDark)
                        
                        VStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 50.0, height: 4)
                                .padding(4)
                            
                            
                            Text("사전질문")
                            
                            ScrollView {
                                VStack {
                                Rectangle()
                                        .frame(width: 390, height: 500)
                                
                                
                                }
                            }
                            
                            
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                        
                    
                        
                        
                    }
                        .offset(y: height - 50.0)
                        .offset(y: offset)
                        .gesture(DragGesture() .updating($gestureOffset, body: {value, out, _ in
                            
                            out = value.translation.height
                            onChange()
                            
                        })
                            //드래그했다가 놓으면 되돌아가는 기능
                            .onEnded({value in
                            
                            let maxHeight = height - 100
                            
                            withAnimation{
                                
                                if -offset > 100 && -offset < maxHeight / 2{
                                    offset = -(maxHeight / 2)
                                } else if -offset > maxHeight / 2{
                                    offset = -maxHeight
                                } else {
                                    offset = 0
                                }
                            }
                                lastOffset = offset
                            
                        })
                                
                                )
                    
                 
                
                )
                
            }.ignoresSafeArea(.all, edges: .bottom)
            
            
            
        }
        }
    
    func onChange() {
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
        
    }
    
}



struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
            .previewDevice("iPhone 13")
    }
}
