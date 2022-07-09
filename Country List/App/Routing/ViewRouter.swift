//
//  ViewRouter.swift
//  Country List
//
//  Created by Mattia La Spina on 9/7/22.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentView: Views = .CountryList
}

enum Views {
    case CountryList
}
