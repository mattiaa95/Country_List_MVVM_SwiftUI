//
//  CountryModel.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//
import Foundation

struct Country: Identifiable{
    let id = UUID()

    let name: Name?
    let tld: [String]?
    let cca2, ccn3, cca3, cioc: String?
    let independent: Bool?
    let status: Status?
    let unMember: Bool?
    let currencies: Currencies?
    let idd: Idd?
    let capital, altSpellings: [String]?
    let region: Region?
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]?
    let latlng: [Double]?
    let landlocked: Bool?
    let area: Double?
    let demonyms: Demonyms?
    let flag: String?
    let maps: Maps?
    let population: Int?
    let fifa: String?
    let car: Car?
    let timezones: [String]?
    let continents: [Continent]?
    let flags, coatOfArms: ImageType?
    let startOfWeek: StartOfWeek?
    let capitalInfo: CapitalInfo?
    let postalCode: PostalCode?
    let borders: [String]?
    let gini: [String: Double]?
    
    init(_ countriesResponseElement: CountriesResponseElement) {
        self.name = countriesResponseElement.name
        self.tld = countriesResponseElement.tld
        self.cca2 = countriesResponseElement.cca2
        self.ccn3 = countriesResponseElement.ccn3
        self.cca3 = countriesResponseElement.cca3
        self.cioc = countriesResponseElement.cioc
        self.independent = countriesResponseElement.independent
        self.status = countriesResponseElement.status
        self.unMember = countriesResponseElement.unMember
        self.currencies = countriesResponseElement.currencies
        self.idd = countriesResponseElement.idd
        self.capital  = countriesResponseElement.capital
        self.altSpellings = countriesResponseElement.altSpellings
        self.region = countriesResponseElement.region
        self.subregion = countriesResponseElement.subregion
        self.languages = countriesResponseElement.languages
        self.translations = countriesResponseElement.translations
        self.latlng = countriesResponseElement.latlng
        self.landlocked = countriesResponseElement.landlocked
        self.area = countriesResponseElement.area
        self.demonyms = countriesResponseElement.demonyms
        self.flag = countriesResponseElement.flag
        self.maps = countriesResponseElement.maps
        self.population = countriesResponseElement.population
        self.fifa = countriesResponseElement.fifa
        self.car = countriesResponseElement.car
        self.timezones = countriesResponseElement.timezones
        self.continents = countriesResponseElement.continents
        self.flags = countriesResponseElement.flags
        self.coatOfArms = countriesResponseElement.coatOfArms
        self.startOfWeek = countriesResponseElement.startOfWeek
        self.capitalInfo = countriesResponseElement.capitalInfo
        self.postalCode = countriesResponseElement.postalCode
        self.borders = countriesResponseElement.borders
        self.gini = countriesResponseElement.gini
    }
    
    
    init() {
        self.name = nil
        self.tld = nil
        self.cca2 = ""
        self.ccn3 = ""
        self.cca3 = ""
        self.cioc = ""
        self.independent = nil
        self.status = nil
        self.unMember = nil
        self.currencies = nil
        self.idd = nil
        self.capital  = nil
        self.altSpellings = nil
        self.region = nil
        self.subregion = ""
        self.languages = nil
        self.translations = nil
        self.latlng = nil
        self.landlocked = nil
        self.area = nil
        self.demonyms = nil
        self.flag = ""
        self.maps = nil
        self.population = nil
        self.fifa = ""
        self.car = nil
        self.timezones = nil
        self.continents = nil
        self.flags = nil
        self.coatOfArms = nil
        self.startOfWeek = nil
        self.capitalInfo = nil
        self.postalCode = nil
        self.borders = nil
        self.gini = nil
    }
}
