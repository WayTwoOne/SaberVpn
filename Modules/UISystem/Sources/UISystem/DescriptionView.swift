//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct DescriptionView: View {
    
    public let description: String
    
    public init(description: String) {
        self.description = description
    }
    
    public var body: some View {
        Text(description)
            .font(.custom("Geister-Regular", size: 18))
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width * 0.85)
            .kerning(-0.72)
            .lineSpacing(10.8)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(description: "Мы сделали удобный VPN-сервис для вашего комфорта без лишних отвлечений")
    }
}
