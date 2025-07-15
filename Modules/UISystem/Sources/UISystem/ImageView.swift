//
//  SwiftUIView.swift
//  
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI

public struct ImageView: View {
    
    public let imageName: String
    
    internal let width = UIScreen.main.bounds.width
    internal let heigth = UIScreen.main.bounds.height
    
    public init(imageName: String) {
        self.imageName = imageName
    }
    
    public var body: some View {
        
        Image(imageName)
            .resizable()
            .frame(width: width * 0.9, height: heigth * 0.5)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageName: "onboardingOneView")
    }
}
