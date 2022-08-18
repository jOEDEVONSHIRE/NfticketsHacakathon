//
//  CategoryRow.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Event]
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
        Text(categoryName)
            .font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0){
                ForEach(items) { event in
                    NavigationLink {
                        EventDetailView(event: event)
                    } label: {
                        CategoryItem(event: event)
                    }
                }
            }
        }
            .frame(height: 185)
    }
}
}

struct CategoryRow_Previews: PreviewProvider {
    static var event = ModelData().event
    
    static var previews: some View {
        CategoryRow(
            categoryName: event[0].category.rawValue,
            items: Array(event.prefix(4))
        )
    }
}
