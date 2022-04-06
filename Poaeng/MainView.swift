//
//  MainView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct MainView: View {
    //아래의 data와 columns라는 이름의 상수(let)입니다. 상수가 무엇인지는 링크 참조
    //https://hwiveloper.dev/2017/05/31/swift-variables-data-type/
    let data = ["IT", "자동차", "물류", "소비재", "식음료", "금융", "기반시설", "자원변형", "서비스"]
    let columns: [GridItem] = [
        GridItem(.fixed(80), spacing: nil, alignment: nil),
        GridItem(.fixed(80), spacing: nil, alignment: nil),
        GridItem(.fixed(80), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        //메인 페이지 아래에서 스크롤뷰로 스크롤 기능을 구현했습니다.
        ScrollView {
            VStack{
                //임의로 VStack으로 이벤트 사진과 분야를 나눴습니다.
                Image("img_event")
                    .resizable(capInsets: EdgeInsets(top: -9.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 300.0, height: 100.0)
                //이미지를 쓸때는 Assets에 사진을 넣고 해당 이름을 문자열로 명시하여 사용합니다.
                //그 다음으로 resizable와 frame으로 크기와 적정 위치를 조절합니다.
                LazyVGrid(
                    //Grid 구조를 구현하는 방법은 여러가지가 있지만 해당 구현에서는 LazyVGrid로 구현했습니다.
                    //https://seons-dev.tistory.com/58
                    //윌께서 추천한 사이트에서 참고했지만 이게 가장 좋은 구현법은 아닌 느낌입니다. 조사가 필요해 보이고 더 좋은 방법을 발견해주시면 말씀해주세요.
                    columns: columns,
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: [],
                    content: {
                        ForEach(data, id: \.self) { index in
                            // ForEach는 반복해서 특정 행위를 하기 위한 방법 중 하나입니다.
                            // index는 forEach가 반복되면서 횟수를 의미합니다. 해당 index를 이용하여 사전에 정의한 숫자, 문자열을 이용가능합니다.
                            VStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.gray)
                                    .frame(height: 80)
                                Text(index)
                                //해당 부분에서는 끝이 둥글어진 사각형을 출력하고 그 밑에 13번 라인에서 정의한 문자열을 출력합니다.
                            }
                        }
                    }
                )
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2))
                .padding(30)
                //위에서 출력된 Grid 레이아웃을 둘러싸는 도형을 생성하고 여백을 줍니다.
            }
            //해당 위치에서는 추천멘토가 출력됩니다. 하지만 코드가 너무 길어져 가독성이 떨어지므로 command + 클릭으로 Extract Subview로 아래로 분리하였습니다.
            RecommendView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct RecommendView: View {
    var body: some View {
        //스택과 프레임을 어떻게 나눌지는 아래의 사이트를 참고했습니다.
        //https://jeongupark-study-house.tistory.com/188
        VStack(alignment: .leading, spacing: nil){
            HStack{
                Text("추천멘토")
                    .font(.title3)
                Spacer()
                Button(action : {
                  
                }) {
                    Text("전체보기")
                        .font(.system(.headline))
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
            Rectangle().frame(height: 0)
            HStack{
                VStack{
                    //아래는 이미지의 속성을 조작하여 원하는 모양으로 출력되게 하였으며 VStack에 있는 만큼 텍스트를 출력하게 합니다.
                    Image("감자")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("감자")
                    Text("디자인")
                        .foregroundColor(.secondary)
                    Text("애플")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("고구마")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("고구마")
                    Text("개발자")
                        .foregroundColor(.secondary)
                    Text("구글")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("당근")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("당근")
                    Text("기획자")
                        .foregroundColor(.secondary)
                    Text("신세계")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("포메")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("포메")
                    Text("귀여움")
                        .foregroundColor(.secondary)
                    Text("우리집")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 30)
            .stroke(Color.black, lineWidth: 2))
    }
}
