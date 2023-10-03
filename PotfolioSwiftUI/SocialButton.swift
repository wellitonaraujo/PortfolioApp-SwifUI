//
//  SocialButton.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 02/10/23.
//

import SwiftUI

struct SocialButton: View {
    var link: String
    var image: String
    
    var body: some View {
        Button(action: {
            SocialManager.openSocial(type: link)
        }, label: {
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .fill(.white)
                        .opacity(1)
                        .shadow(radius: 5))
        })
    }
}

struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialButton(link: "https://www.linkedin.com/in/wellitonaraujo", image: "linkedin")
    }
}
