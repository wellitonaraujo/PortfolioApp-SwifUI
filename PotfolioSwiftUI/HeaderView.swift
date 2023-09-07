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
                    .frame(width: 105, height: 105)
                    .cornerRadius(50)
                    .padding(5)
                    .background(
                        Circle()
                            .opacity(0.7)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(.system(size: 22, weight: .semibold, design: .default))
                .padding(.top, 9)
            
            Text(appModel.portfolio.role)
                .font(.system(size: 23, weight: .medium, design: .monospaced))
                .opacity(0.85)
                .italic()
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    
                Text(appModel.portfolio.location)
                    .font(.system(size: 17))
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .font(.headline)
                .fontWeight(.medium)
                .italic()
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
