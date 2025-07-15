//
//  TryProButton.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI

struct TryProButton: View {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        
        Button(action: {
            ()
        }, label: {
            Text("Попробовать PRO")
                .font(.custom("Geist-Regular", size: 18))
                .lineSpacing(10.8)
                .kerning(-0.72)
                .frame(width: width * 0.85, height: height * 0.055)
        })
        .buttonStyle(.borderedProminent)
        
    }
}

struct TryProButton_Previews: PreviewProvider {
    static var previews: some View {
        TryProButton()
    }
}
