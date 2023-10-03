//
//  SocialManagerViewModel.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 03/10/23.
//

import UIKit

class SocialManager {
    static func openSocial(type: String) {
        if let url = URL(string: type) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

