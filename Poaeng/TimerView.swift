import SwiftUI

struct TimerView: View {
    
    @State var timeRemaining = 1200
    @State var timerunnig = true
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func convertSecondsToTime(timeInSeconds : Int) -> String {
        let minutes = timeInSeconds / 60
        
        let seconds = timeInSeconds % 60
        
        return String(format: "%02i:%02i", minutes,seconds)
    }
    
    var body: some View {
        HStack {
            Text(convertSecondsToTime(timeInSeconds : timeRemaining))
            
                .font(.system(size: 20))
                .fontWeight(.heavy)
            
                .onReceive(timer) { _ in
                    if timeRemaining > 0 && timerunnig {
                        timeRemaining -= 1
                    }
                    else {
                        timerunnig = false
                    }
                }
            Spacer()
            
            Button("시간 추가"){
                timeRemaining += 300
            }
            
//            HStack(spacing: 40) {
//                Button("Start") {
//                    timerunnig = true
//                }
//                Button("Add Time") {
//                    timeRemaining += 300
//                }.foregroundColor(.green)
//                Button("Stop") {
//                    timerunnig = false
//                }.foregroundColor(.red)
//            }
            
        }
    }

}


struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
