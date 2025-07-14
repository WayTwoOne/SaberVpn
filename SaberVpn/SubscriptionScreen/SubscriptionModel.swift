//
//  SubscriptionModel.swift
//  SaberVpn
//
//  Created by Vladimir on 14.07.2025.
//

import Foundation

struct HorizonalButtons {
    let title: String
    let icon: String
    
    static func getMockData() -> [HorizonalButtons]{
        return [
            HorizonalButtons(
                title: "100+ платных стран",
                icon: "Gift"
            ),
            HorizonalButtons(
                title: "Безграничное использование",
                icon: "Diamond"
            ),
            HorizonalButtons(
                title: "Отсутствие рекламы",
                icon: "STOP"
            )
        ]
    }
}

struct GridButtons {
    let interval: String
    let cost: String
    let discount: String?
    
    static func getMockData() -> [GridButtons] {
        return [
            GridButtons(
                interval: "Неделя",
                cost: "299 ₽, отмена в любое время",
                discount: nil
            ),
            GridButtons(
                interval: "Месяц",
                cost: "299 ₽, отмена в любое время",
                discount: nil
            ),
            GridButtons(
                interval: "Год",
                cost: "999 ₽, отмена в любое время",
                discount: "35% SALE"
            )
        ]
    }
}
