//
//  SocialButton.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 02/10/23.
//

import SwiftUI

struct SocialButton: View {
    @State private var isPulsating = false
    @State private var isButtonExpanded = false
    
    var link: String
    var image: String
  
    var body: some View {
        Button(action: {
            SocialManager.openSocial(type: link)
        }, label: {
            Image(image)
                .resizable()
                .background(
                    Circle()
                        .fill(.white)
                        .opacity(1)
                        .shadow(radius: 5))
        })
        .frame(width: isPulsating ? 40 : 39, height: isPulsating ? 40 : 39)
        .scaleEffect(isPulsating ? 1.05 : 1.0)
        .animation(.easeInOut(duration: 1).repeatForever(), value: isPulsating)
        .onAppear(){
            self.isPulsating.toggle()
        }
    }
}

struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialButton(link: "https://www.linkedin.com/in/wellitonaraujo", image: "linkedin")
    }
}
