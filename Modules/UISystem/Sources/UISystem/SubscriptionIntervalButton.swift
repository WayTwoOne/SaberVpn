//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct SubscriptionIntervalButton: View {
    
    public let buttonColor: Color
    public let buttonPressedColor: Color
    public let descriptionTextColor: Color
    public let interval: String
    public let description: String
    public let action: () -> Void
    public let selected: Int?
    
    public init(buttonColor: Color, buttonPressedColor: Color, descriptionTextColor: Color, interval: String, description: String, action: @escaping () -> Void, selected: Int?) {
        self.buttonColor = buttonColor
        self.buttonPressedColor = buttonPressedColor
        self.descriptionTextColor = descriptionTextColor
        self.interval = interval
        self.description = description
        self.action = action
        self.selected = selected
    }
    
    public var body: some View {
        Button {
            action()
            
        } label: {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Circle()
                    .foregroundColor(buttonPressedColor)
                    .frame(width: 32, height: 32)
                    .padding(.bottom)
                
                Text(interval)
                    .foregroundColor(.white)
                    .font(.custom("Geist-SemiBold", size: 20))
                    .lineSpacing(12)
                    .kerning(-0.4)
                
                
                Text(description)
                    .foregroundColor(descriptionTextColor)
                    .textCase(.uppercase)
                    .font(.custom("Geist-Regular", size: 12))
                    .lineSpacing(7.2)
                    .kerning(1.4)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    
            }
            .padding(.all)
            
        }
        .background {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(buttonColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 17)
                        .stroke(buttonPressedColor, lineWidth: 2) // Обводка
                )
        }
    }
}

struct SubscriptionIntervalButton_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionIntervalButton(
            buttonColor: .black,
            buttonPressedColor: .blue,
            descriptionTextColor: .gray,
            interval: "Неделя",
            description: "299 ₽, отмена в любое время",
            action: {},
            selected: 0
        )
    }
}
