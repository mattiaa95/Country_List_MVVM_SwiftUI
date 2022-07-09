//
//  CountryCell.swift
//  Country List
//
//  Created by Mattia La Spina on 9/7/22.
//

import SwiftUI

struct CountryCell : View {
    let country: Country

    var body: some View {
        HStack(alignment: .center, spacing: 10.0){
            AsyncImage(
                url: URL(string: (country.flags?.png ?? country.flags?.svg) ?? ""),
                content: { image in
                    image.resizable()
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 25)
                        .clipped()
                        .border(Color.black)
                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(country.name?.common ?? "")
            Spacer()
        }
    }
}

struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountryCell(country: Country.init())
                .previewLayout(.sizeThatFits)
        }
    }
}
