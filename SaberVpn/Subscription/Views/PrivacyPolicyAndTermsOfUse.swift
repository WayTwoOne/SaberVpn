//
//  PrivacyPolicyAndTermsOfUse.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI

struct PrivacyPolicyAndTermsOfUse: View {
    
    var body: some View {
        ZStack {
            Color.blackTheme
                .ignoresSafeArea()
            
            Text(attributedString)
                .foregroundColor(.descriptionTextColor)
                .font(.custom("Geist-Regular", size: 12))
                .lineSpacing(6)
                .kerning(0.84)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                
        }
    }
    
    private var attributedString: AttributedString {
        var text = AttributedString("ПОЖАЛУЙСТА, ПЕРЕЙДИТЕ ПО ССЫЛКЕ, ЧТОБЫ\n ОЗНАКОМИТЬСЯ С ПОЛИТИКОЙ\n КОНФИДЕНЦИАЛЬНОСТИ И УСЛОВИЯМИ ИСПОЛЬЗОВАНИЯ")
        
        let linkAttributes = AttributeContainer
            .foregroundColor(.white)
        
        if let range1 = text.range(of: "ПОЛИТИКОЙ\n КОНФИДЕНЦИАЛЬНОСТИ") {
            text[range1].mergeAttributes(linkAttributes)
        }
        
        if let range2 = text.range(of: "УСЛОВИЯМИ ИСПОЛЬЗОВАНИЯ") {
            text[range2].mergeAttributes(linkAttributes)
        }
        
        return text
    }
}

struct PrivacyPolicyAndTermsOfUse_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyAndTermsOfUse()
    }
}
