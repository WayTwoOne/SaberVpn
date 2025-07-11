//
//  File.swift
//  
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI

public protocol Routable: Hashable, Identifiable {
    associatedtype ViewType: View
    var navigationType: NavigationType { get }
    @ViewBuilder func view(router: Coordinator<Self>) -> ViewType
}

public enum NavigationType {
    case push
    case sheet
    case fullScreenCover
    
}

extension Routable {
    public var id: Self { self }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
