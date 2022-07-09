//
//  CountryFetcher.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//
//I could use Alamofire or some library, but it's just an one API call, I didn't want to put a library just for one fetcher

import Foundation

struct CountryFetcher {
    
    enum CountryFetcherError: Error {
        case invalidURL
    }
    
    static func fetchCountries() async throws -> CountriesResponse {
        guard let url = URL(string: NetworkConstants.BASE_URL) else {
            throw CountryFetcherError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)

        let countriesResult = try JSONDecoder().decode(CountriesResponse.self, from: data)
        return countriesResult
    }

}
