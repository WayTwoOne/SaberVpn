//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct ImageView: View {
    
    public let imageName: String
    
    public init(imageName: String) {
        self.imageName = imageName
    }
    
    public var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 390, height: 394)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "onboardingOneView")
    }
}
