//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct SubscriptionAdvantagesView: View {
    
    public let icon: String
    public let title: String
    public let rectangleColor: Color
    
    public init( icon: String, title: String, rectangleColor: Color) {
        self.icon = icon
        self.title = title
        self.rectangleColor = rectangleColor
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(rectangleColor)
            HStack {
                Image(icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(title)
                    .font(.custom("Geist-Regular", size: 18))
                    .foregroundColor(.white)
                    .lineSpacing(0.9)
                    .kerning(-0.72)
            }
            .padding(.horizontal)
            .buttonStyle(.borderedProminent)
        }
        .frame(height: 53)
    }
}

struct SubscriptionAdvantagesView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionAdvantagesView(icon: "Gift", title: "100+ платных стран", rectangleColor: .green)
    }
}
