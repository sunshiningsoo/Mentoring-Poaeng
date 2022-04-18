import SwiftUI

struct MainView: View {
    
    let data = ["게이밍" : "gamecontroller.fill","미용" : "scissors","개발자" : "desktopcomputer","금융 ": "dollarsign.square.fill","교육 ": "character.book.closed.fill","언론" : "newspaper","번역" : "network","의료": "stethoscope","항공" : "airplane"]
    let columns: [GridItem] = [
        GridItem(.fixed(80), spacing: 30, alignment: nil),
        GridItem(.fixed(80), spacing: 30, alignment: nil),
        GridItem(.fixed(80), spacing: 30, alignment: nil),
    ]
    
    var body: some View {
        
            ScrollView {
                VStack{
                    Image("back3")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width:390, height: 190)
                        RoundedRectangle(cornerRadius: 30)
                        .fill(Color(hex: 0xEAF6FF))
                        .frame(width:360, height: 380)
                        .overlay(
                    

                    LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 25,
                        pinnedViews: [],
                        content: {
                            ForEach(data.sorted(by: <), id: \.key) { key, value in
                                VStack(spacing: 10) {
                                    NavigationLink(destination:MentorListView()
                                    )
                                    {
                                        ZStack(){
                                            RoundedRectangle(cornerRadius: 60)
                                                .foregroundColor(Color.white)
                                            //색깔 변경
                                                .frame(width: 70,height: 70)
                                                
                                            
                                            
                                            Image(systemName: "\(value)")
                                                .font(.system(size:30))
                                                .frame(width: 60, height: 60)
                                                .foregroundColor(.blue)
                                                
                                        }
                                

                                    }
                                    
                                    Text(key)
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)
                                    
                                }
                               
                            }
                            
                        }
                        
                    )
                    .padding(.leading, 14.0)
                    )
                    
                        .padding()

                    
                }
                RecommendView()
            }
            .navigationBarHidden(true)
        
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct RecommendView: View {
    var body: some View {
        Spacer()
            .frame(height: 25)
            VStack{
                HStack(alignment: .bottom){
                    Spacer()
                        .frame(width: 25)
                    Text("추천멘토")
                        .font(.system(size:23,weight:.medium))
                    Spacer()
                Button(action : {
                  
                }) {
                    Text("전체보기")
                        .font(.system(size:20))
                        .foregroundColor(.blue)

                    
                }
                Spacer()
                    .frame(width:20)
            }
            ScrollView(.horizontal, showsIndicators:false){
                HStack{
                    
                ForEach(users){
                    user in
                    RoundedRectangle(cornerRadius: 30)
                    .fill(Color(hex: 0xEEFEFB ))
//                    색깔 바꾸기!!
                    .frame(width:100, height: 180)
                    .overlay(
                    VStack{
                        ZStack{
                            Circle()
                                .foregroundColor(Color.white)
                        Image("\(user.name)")
                                .resizable()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(lineWidth: 1).foregroundColor(Color.black))
                    
                        }
                        Text("\(user.name)")
                        Text("\(user.job)")
                            .frame(width: 50, height: 20)
                            .foregroundColor(.secondary)
                        Text("\(user.company)")
                            .foregroundColor(.secondary)
                            .frame(width: 50, height: 10)
                    }
                        .padding()
                    )
                    
                }
               
                
            }
                
            .frame(width: 700)
            }
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 30)
            .stroke(Color.white, lineWidth: 2))
    }
        
}
}
