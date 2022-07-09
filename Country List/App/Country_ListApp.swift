//
//  Country_ListApp.swift
//  Country List
//
//  Created by Mattia La Spina on 8/7/22.
//

import SwiftUI

@main
struct Country_ListApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView().environmentObject(ViewRouter())
        }
    }
}
