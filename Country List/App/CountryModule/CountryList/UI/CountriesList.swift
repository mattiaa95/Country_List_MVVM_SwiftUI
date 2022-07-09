//
//  CountriesList.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//

import SwiftUI

struct CountriesList: View {
    
    @ObservedObject var viewModel: CountriesListViewModel
    
    var body: some View {
        ZStack{
            if viewModel.isLoading {
                ProgressView()
                    .zIndex(1)
            }
            
            List(viewModel.countries) { country in
               
            CountryCell(country: country)
                
            }.task {
                await viewModel.loadCountries()
            }

        }
        .alert(isPresented: $viewModel.onError) {
                       Alert(title: Text("Error!"),
                           message:  Text("Please try again later!"),
                           dismissButton: .default(Text("OK")))
                   }
        
    }
}

struct CountriesList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountriesList(viewModel: CountriesListViewModel.init())
        }
    }
}
