# Poaeng

MC1 포앵팀의 코드입니다.


## 헥스 코드로 색상 사용하기

사용하시기 전 원하는 뷰에서 아래의 Color 익스텐션을 복사 붙여넣기 하여 사용해주세요.

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

사용하실때는 아래의 코드를 참조해서 사용해주세요

.background(Color(hex: 0xededea))
