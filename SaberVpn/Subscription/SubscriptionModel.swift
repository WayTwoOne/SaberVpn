//
//  SubscriptionModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import Foundation

struct Advantages: Hashable {
    
    let title: String
    let icon: String
    
    static func getMockData() -> [Advantages]{
        return [
            Advantages(
                title: "100+ платных стран",
                icon: "Gift"
            ),
            Advantages(
                title: "Безграничное использование",
                icon: "Diamond"
            ),
            Advantages(
                title: "Отсутствие рекламы",
                icon: "STOP"
            )
        ]
    }
}

struct Subscriptions: Hashable {
    
    let id: Int
    let interval: String
    let cost: String
    let discount: String?
    
    static func getMockData() -> [Subscriptions] {
        return [
            Subscriptions(
                id: 0,
                interval: "Неделя",
                cost: "299 ₽, отмена в любое время",
                discount: nil
            ),
            Subscriptions(
                id: 1,
                interval: "Месяц",
                cost: "699 ₽, отмена в любое время",
                discount: nil
            ),
            Subscriptions(
                id: 2,
                interval: "Год",
                cost: "999 ₽, отмена в любое время",
                discount: "35% SALE"
            )
        ]
    }
}
