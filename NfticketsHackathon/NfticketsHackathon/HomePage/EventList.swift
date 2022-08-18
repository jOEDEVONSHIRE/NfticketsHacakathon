//
//  EventList.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import SwiftUI

struct EventList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredEvents: [Event] {
        modelData.event.filter { event in
            (!showFavoritesOnly || event.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Saved for later")
                }
            
            ForEach(filteredEvents) { event in
            NavigationLink {
                EventDetailView(event: event)
                
            } label: {
            EventRow(event: event)
                }
            }
        .navigationTitle("Featured")
            }
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
            .environmentObject(ModelData())
    }
}
