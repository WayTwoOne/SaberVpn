//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct DescriptionView: View {
    
    public let description: String
    public let textColor: Color
    
    internal let width = UIScreen.main.bounds.width
    
    public init(description: String, textColor: Color) {
        self.description = description
        self.textColor = textColor
    }
    
    public var body: some View {
        Text(description)
            .font(.custom("Geister-Regular", size: 18))
            .multilineTextAlignment(.center)
            .foregroundColor(textColor)
            .frame(width: width * 0.9)
            .minimumScaleFactor(0.5)
            .kerning(-0.72)
            .lineSpacing(10.8)
            .minimumScaleFactor(0.5)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(description: "Мы сделали удобный VPN-сервис для вашего комфорта без лишних отвлечений", textColor: .gray)
    }
}
