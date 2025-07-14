//
//  SubscriptionsGridView.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import SwiftUI
import UISystem

struct SubscriptionsGridView: View {
    
    @ObservedObject var viewModel: SubscriptionViewModel
    @State private var pressedButton = 0
    
    var body: some View {
        ScrollView {
            ForEach(0..<viewModel.subscriptions.count, id: \.self) { i in
                VStack {
                    HStack {
                        SubscriptionIntervalButton(
                            buttonColor: .subscriptionButtonColor,
                            buttonPressedColor: .subscriptionButtonPressedColor,
                            descriptionTextColor: .descriptionTextColor,
                            interval: viewModel.subscriptions[i].interval,
                            description: viewModel.subscriptions[i].cost,
                            action: {
                                pressedButton = i
                            },
                            selected: pressedButton
                        )
                        SubscriptionIntervalButton(
                            buttonColor: .subscriptionButtonColor,
                            buttonPressedColor: .subscriptionButtonPressedColor,
                            descriptionTextColor: .descriptionTextColor,
                            interval: viewModel.subscriptions[i].interval,
                            description: viewModel.subscriptions[i].cost,
                            action: {
                                pressedButton = i
                            },
                            selected: pressedButton
                        )
                    }
                    SubscriptionIntervalButton(
                        buttonColor: .subscriptionButtonColor,
                        buttonPressedColor: .subscriptionButtonPressedColor,
                        descriptionTextColor: .descriptionTextColor,
                        interval: viewModel.subscriptions[i].interval,
                        description: viewModel.subscriptions[i].cost,
                        action: {
                            pressedButton = i
                        },
                        selected: pressedButton
                    )
                }
            }
        }
    }
}

struct SubscriptionsGridView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionsGridView(viewModel: SubscriptionViewModel())
    }
}
