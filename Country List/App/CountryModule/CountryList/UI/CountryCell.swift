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
                url: URL(string: (country.flags?.png ?? country.flags?.svg) ?? "https://flagcdn.com/w320/it.png"),
                content: { image in
                    image.resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(maxWidth: 35, maxHeight: 35)
                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(country.name?.common ?? "Italy")
            Spacer()
            Image(systemName: "chevron.right").imageScale(.small)
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
