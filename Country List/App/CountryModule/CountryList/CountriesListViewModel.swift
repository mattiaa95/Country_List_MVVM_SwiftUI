//
//  CountriesListViewModel.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//

import SwiftUI

@MainActor class CountriesListViewModel: ObservableObject {
    
    @Published private(set) var countries: [Country] = []
    @Published var isLoading: Bool = true
    @Published var onError: Bool = false
    
    func loadCountries() async {
        Task {
            self.isLoading = true
            do {
                let countries = try await CountryFetcher.fetchCountries()
                
                for country in countries {
                    self.countries.append(Country.init(country))
                }
                self.isLoading = false
            } catch {
                print("Request failed with error: \(error)")
                self.isLoading = false
                self.onError = true
            }
            
        }
    }
    
    
    init() {
        if let path = Bundle.main.path(forResource: "CountyTest", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)                
                let countryTest = try JSONDecoder().decode(CountriesResponseElement.self, from: data)
                
                for _ in 1...8 {
                    self.countries.append(Country.init(countryTest))
                }
              
            } catch {
                self.onError = true
                print("Failed to load Test Data")
            }
        }
    }
    
}
