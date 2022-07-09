//
//  RouterView.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.s
//

import SwiftUI

struct RouterView: View {
    @ObservedObject var model = CountriesListViewModel()
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentView {
            case .CountryList:
                CountriesList(viewModel: self.model)
            case .CountryDetail:
                CountriesList(viewModel: self.model)
        }
    }
}

struct RouterView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView()
    }
}
