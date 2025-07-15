//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct OnboardingButtonView: View {
    
    public var action: ()-> Void
    public let numberOfPage: Int
    public let buttontitle: String
    public let icon: String
    
    internal let width = UIScreen.main.bounds.width
    internal let heigth = UIScreen.main.bounds.height
    
    public init(action: @escaping () -> Void, numberOfPage: Int, buttontitle: String, icon: String) {
        self.action = action
        self.numberOfPage = numberOfPage
        self.buttontitle = buttontitle
        self.icon = icon
    }
    
    public var body: some View {
        
        Button {
            action()
        } label: {
            HStack {
                Text("\(numberOfPage)/3")
                    .font(.custom("Geist-Regular", size: 16))
                
                ForEach(1..<4) { index in
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            
                            .fill(index <= numberOfPage ? .white : .gray)
                            
                            .frame(width: 27, height: 2, alignment: .center)
                    }
                }
            
                Spacer()
                
                HStack {
                    Text(buttontitle)
                        .font(.custom("Geist-Regular", size: 18))
                    
                    Image(icon)
                        .resizable()
                        .foregroundColor(.white)
                        .frame(
                            width: numberOfPage <= 2 ? 15.3 : 10.5,
                            height: 10.5,
                            alignment: .center
                        )
                }
            }
            .frame(width: width * 0.9, height: heigth * 0.06, alignment: .center)
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButtonView(
            action: {},
            numberOfPage: 1,
            buttontitle: "Далее",
            icon: "VectorStart"
        )
    }
}
