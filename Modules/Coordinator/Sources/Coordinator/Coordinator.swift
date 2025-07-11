

import SwiftUI
import Combine

public class Coordinator<Destination: Routable>: ObservableObject {
    @Published public var path: NavigationPath = .init()
    @Published public var presentingSheet: Destination?
    @Published public var presentingFullScreenCover: Destination?
    
    public init() {}
    
    public func routeTo(_ route: Destination) {
        switch route.navigationType {
        case .push:
            push(route)
        case .sheet:
            presentSheet(route)
        case .fullScreenCover:
            presentFullScreen(route)
        }
    }
    
    public func popToPrevious() {
        path.removeLast()
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func dismiss() {
        if !path.isEmpty {
            path.removeLast()
        } else if presentingSheet != nil {
            presentingSheet = nil
        } else if presentingFullScreenCover != nil {
            presentingFullScreenCover = nil
        }
    }
    
    public func push(_ appRoute: Destination) {
        path.append(appRoute)
    }
    
    public func presentSheet(_ route: Destination) {
        self.presentingSheet = route
    }
    
    public func presentFullScreen(_ route: Destination) {
        self.presentingFullScreenCover = route
    }
}
