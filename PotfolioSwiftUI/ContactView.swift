//
//  ContactView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 02/10/23.
//

import SwiftUI

struct ContactView: View {
    var appModel: AppModel
        
    @ObservedObject private var viewModell = TypingTextViewModel()
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text(appModel.portfolio.name)
                    .font(.system(size: 22, weight: .bold, design: .monospaced))
                    .opacity(0.80)
                    
                Text(viewModell.roleText)
               .font(.system(size: 19, weight: .medium, design: .default))
               .opacity(0.70)
               //.italic()
            }
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "location.fill")
                    Text(appModel.portfolio.location)
                }
                    
                HStack {
                    Image(systemName: "envelope.fill")
                    Text(appModel.portfolio.email)
                }
                HStack {
                    Image(systemName: "phone.circle.fill")
                    Text(appModel.portfolio.fone)
                }
            }
            .font(.system(size: 15))
            .padding(.top, 5)
            .opacity(0.45)
        }
        .padding(.trailing, 30)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(appModel: AppModel())
    }
}
