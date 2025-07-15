//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//


import SwiftUI

public struct HeaderView: View {
    
    public let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
 
        Text(text)
            .foregroundColor(.white)
            .font(.custom("Geist-Bold", size: 48))
            .multilineTextAlignment(.center)
            .lineSpacing(2.4)
            .kerning(-2.4)
            .minimumScaleFactor(0.5)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Добро пожаловать!")
    }
}
