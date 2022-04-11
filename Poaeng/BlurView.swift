//
//  BlurView.swift
//  Poaeng
//
//  Created by Youngwoong Choi on 2022/04/08.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
   
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
        
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
    
}



