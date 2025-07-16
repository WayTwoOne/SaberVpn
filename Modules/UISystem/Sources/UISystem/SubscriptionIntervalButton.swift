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
    public var discount: String? = nil
    
    internal let width = UIScreen.main.bounds.width
    internal let heigth = UIScreen.main.bounds.height
    
    public init(buttonColor: Color, buttonPressedColor: Color, descriptionTextColor: Color, interval: String, description: String, action: @escaping () -> Void, selected: Int?, discount: String? = nil) {
        self.buttonColor = buttonColor
        self.buttonPressedColor = buttonPressedColor
        self.descriptionTextColor = descriptionTextColor
        self.interval = interval
        self.description = description
        self.action = action
        self.selected = selected
        self.discount = discount
    }
    
    public var body: some View {
        Button {
            action()
            
        } label: {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(buttonColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 17)
                            .stroke(buttonPressedColor, lineWidth: 2) // Обводка
                    )
                
                HStack {
                    Circle()
                        .foregroundColor(buttonPressedColor)
                        .frame(width: 32, height: 32)
                    
                    Spacer()
                    
                    if discount != nil {
                        Text(discount ?? "")
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.5)
                            .padding(.all, 8)
                            .background {
                                buttonPressedColor
                                    .cornerRadius(20)
                            }
                        
                    }
                }
                .offset(x: width * 0.04, y: -heigth * 0.055)
                .padding(.trailing, 30)

                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(interval)
                            .foregroundColor(.white)
                            .font(.custom("Geist-SemiBold", size: 20))
                            .lineSpacing(12)
                            .kerning(-0.4)
                            .minimumScaleFactor(0.4)
                        
                        Text(description)
                            .foregroundColor(descriptionTextColor)
                            .textCase(.uppercase)
                            .font(.custom("Geist-Regular", size: 12))
                            .lineSpacing(7.2)
                            .kerning(1.4)
                            .multilineTextAlignment(.leading)
                            .minimumScaleFactor(0.4)
                    }
                
                .padding(.leading)
                .offset(y: heigth * 0.045)
               
            }
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
            selected: 0,
            discount: "35% SALE"
        )
        .frame(height: 151, alignment: .leading)
    }
}
