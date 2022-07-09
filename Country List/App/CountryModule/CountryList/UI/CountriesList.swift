//
//  CountriesList.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//

import SwiftUI

struct CountriesList: View {
    
    @ObservedObject var viewModel: CountriesListViewModel
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack{
        if viewModel.isLoading {ProgressView().zIndex(1)}
            ListView()
        }.alert(isPresented: $viewModel.onError) {NetworkAlert()}
    }
    
    func ListView() -> some View {
        return List(viewModel.countries) { country in
            
            CountryCell(country: country).onTapGesture {
                viewRouter.currentView = .CountryDetail
            }
            
        }.task {
            await viewModel.loadCountries()
        }
    }
    
//    TODO: Get Message from ViewModel
    func NetworkAlert() -> Alert {
        return Alert(title: Text("Network Error"),
                     message:  Text("Please try again later!"),
                     dismissButton: .default(Text("OK")))
    }
}

struct CountriesList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountriesList(viewModel: CountriesListViewModel.init(previewData:true))
        }
    }
}
