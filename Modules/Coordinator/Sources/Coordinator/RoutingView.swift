//
//  File.swift
//  
//
//  Created by Vladimir on 11.07.2025.
//

import SwiftUI

public struct RoutingView<Content: View, Destination: Routable>: View {
    @StateObject var router = Coordinator<Destination>()
    private let rootContent: () -> Content
    
    public init(_ routeType: Destination.Type, @ViewBuilder content: @escaping () -> Content) {
        self.rootContent = content
    }
    
    public var body: some View {
        NavigationStack(path: $router.path) {
            rootContent()
                .navigationDestination(for: Destination.self) { route in
                    route.view(router: router)
                }
        }
        .fullScreenCover(item: $router.presentingFullScreenCover) { route in
            route.view(router: router)
        }
        .environmentObject(router)
    }
}
