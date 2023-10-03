//
//  SocialView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 26/09/23.
//

import SwiftUI

struct SocialView: View {
    var body: some View {
        VStack(spacing: 30) {
            SocialButton(link: "https://www.linkedin.com/in/wellitonaraujo", image: "linkedin")
            SocialButton(link: "https://github.com/wellitonaraujo", image: "github")
            SocialButton(link: "https://www.instagram.com/welliton.dev", image: "instagram")
        }
    }
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
