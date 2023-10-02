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
        ZStack{
           
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: AppModel())
                            SkillsView(skills: appModel.portfolio.skiils,
                                       width: UIScreen.main.bounds.width - 30)
                                .padding(.top, 32)
                            
                            ExperiencesView(experiences: appModel.portfolio.experiencies)
                                .padding(.top, 42)
                }
                .padding(16)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
