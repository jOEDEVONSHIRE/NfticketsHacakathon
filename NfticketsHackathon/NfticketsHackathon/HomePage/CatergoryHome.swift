//
//  CatergoryHome.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct CatergoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CatergoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CatergoryHome()
            .environmentObject(ModelData())
    }
}
