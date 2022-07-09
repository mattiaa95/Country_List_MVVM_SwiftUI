//
//  CountryDetail.swift
//  Country List
//
//  Created by Mattia La Spina on 9/7/22.
//

import SwiftUI
import MapKit

struct CountryDetail: View {
    let country: Country
    
    var body: some View {
        ScrollView {
            AsyncImage(
                url: URL(string: (country.flags?.png ?? country.flags?.svg) ?? ""),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 250, maxHeight: 150)
                        .border(Color.black)
                },
                placeholder: {
                    ProgressView()
                }
            )
            HStack {
                Text("Coat of arms: ")
                AsyncImage(
                    url: URL(string: (country.coatOfArms?.png ?? country.coatOfArms?.svg) ?? ""),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 50, maxHeight: 50)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
            }
            
            VStack(alignment: .leading) {
                Text(country.name?.official ?? "")
                    .font(.title)
                Spacer()
                HStack {
                    Text(country.capital?.first ?? "")
                    Spacer()
                    Text("Population:")
                    Text(String(country.population ?? 50000000))
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                    HStack {
                        VStack{
                            Text(country.region?.rawValue ?? "")
                                .font(.title2)
                            Text(country.subregion ?? "")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        HStack{
                            Text("Currency:")
                            Text(String(country.currencies?.name ?? ""))
                            Text(String(country.currencies?.symbol ?? ""))
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        
                    }
                    Spacer()
                    
                    Text("Area: ")
                    Text(String(country.area ?? 0))
                   
                
            }
            .padding()
            MapView(coordinate: CLLocationCoordinate2D.init(latitude: (country.latlng?[0] ?? 0), longitude: (country.latlng?[1] ?? 0)))
                .ignoresSafeArea(edges: .top)
                .frame(height: 375)
            
        }
        .navigationTitle(country.name?.common ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }}

struct CountryDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountryDetail(country: Country.init())
        }
    }
}
