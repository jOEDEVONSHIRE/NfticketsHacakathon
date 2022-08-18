//
//  CategoryItem.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct CategoryItem: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            event.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(event.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(event: ModelData().event[0])
    }
}

