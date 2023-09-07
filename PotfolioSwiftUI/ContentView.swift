//
//  ContentView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 07/09/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - variables
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: AppModel())
                    SkillsView(skills: appModel.portfolio.skiils, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    
                    ExperiencesView(experiences: appModel.portfolio.experiencies)
                        .padding(.top, 42)
                }
                .padding(16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
