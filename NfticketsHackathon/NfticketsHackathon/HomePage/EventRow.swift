//
//  EventRow.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import SwiftUI

struct EventRow: View {
    var event: Event
    
    var body: some View {
        HStack {
            event.image
                .resizable()
                .frame(width: 60, height: 60)

            Text(event.name)
            
            Spacer()
            
            if event.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var events = ModelData().event
    
    
    static var previews: some View {
        Group {
        EventRow(event: event[1])
        EventRow(event: event[2])
    }
            .previewLayout(.fixed(width: 300, height: 70))
    }
    }

