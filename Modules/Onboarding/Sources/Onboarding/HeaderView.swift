//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI

struct SwiftUIView: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let text: String
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .kerning(0.5)
                    .bold()
                    .multilineTextAlignment(.center)
                    
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Добро пожаловать!")
    }
}
