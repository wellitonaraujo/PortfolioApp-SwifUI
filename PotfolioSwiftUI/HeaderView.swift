//
//  HeaderView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - variables
    var appModel: AppModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.8)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            HStack {
                SocialView()
                Spacer()
                    ContactView(appModel: AppModel())
                Spacer()
            }

            Text(appModel.portfolio.description)
                .font(.headline)
                .fontWeight(.medium)
                .italic()
                .opacity(0.7)
                .lineSpacing(8)
                .padding(.top, 30)
                .fontDesign(.monospaced)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
