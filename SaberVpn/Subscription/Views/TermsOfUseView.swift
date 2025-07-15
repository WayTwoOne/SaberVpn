//
//  TermsOfUseView.swift
//  SaberVpn
//
//  Created by Vladimir on 15.07.2025.
//

import SwiftUI
import Coordinator

struct TermsOfUseView: View {
    @EnvironmentObject var coordinator: Coordinator<OnboardingRoute>
    var body: some View {
        VStack {
            Text("Условия использования")
            Button("Назад к подписке") {
                coordinator.popToPrevious()
                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
                    coordinator.presentFullScreen(.subscription)
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct TermsOfUseView_Previews: PreviewProvider {
    static var previews: some View {
        TermsOfUseView()
    }
}
