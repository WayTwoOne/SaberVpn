//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct ButtonView: View {
    
    public var action: ()-> Void
    public let numberOfPage: Int
    public let buttontitle: String
    public let icon: String
    
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
                        .frame(width: 28, height: 24, alignment: .center)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(
            action: {},
            numberOfPage: 1,
            buttontitle: "Далее",
            icon: "VectorStart"
        )
    }
}
