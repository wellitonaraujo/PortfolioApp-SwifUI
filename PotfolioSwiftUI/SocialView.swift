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
            Image("linkedin")
                .resizable()
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .fill(.white)
                        .opacity(1)
                        .shadow(radius: 5)
                )
                .onTapGesture {
                    openSocial(type: "https://www.linkedin.com/in/wellitonaraujo")
                }
            
            Image("github")
                .resizable()
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .fill(.white)
                        .opacity(1)
                        .shadow(radius: 5)
                )
                .onTapGesture {
                    openSocial(type: "https://github.com/wellitonaraujo")
                }
            
            Image("instagram")
                .resizable()
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .fill(.white)
                        .opacity(1)
                        .shadow(radius: 5)
                        
                )
                .onTapGesture {
                    openSocial(type: "https://www.instagram.com/welliton.dev")
                }
        }

    }
    
    func openSocial(type: String) {
        if let url = URL(string: type) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
