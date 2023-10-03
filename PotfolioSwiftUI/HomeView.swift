//
//  HomeView.swift
//  PotfolioSwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 02/10/23.
//

import SwiftUI

struct HomeView: View {
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                HeaderView(appModel: AppModel())
                SkillsView(skills: appModel.portfolio.skiils, width: UIScreen.main.bounds.width - 30)
                ExperiencesView(experiences: appModel.portfolio.experiencies).padding(.top, 30)
            }
            .padding(.horizontal, 16)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}
