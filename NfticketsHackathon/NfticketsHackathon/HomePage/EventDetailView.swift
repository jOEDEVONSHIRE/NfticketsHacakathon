//
//  EventDetailView.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import SwiftUI

struct EventDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var event: Event
    
    var eventIndex: Int {
        modelData.event.firstIndex(where: {$0.id == event.id})!
    }
    
    
    var body: some View {
       ScrollView {
  
            MapForTicket(coordinate: event.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            ImageForTicket(image: event.image)
               .scaledToFit()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
        VStack(alignment: .center) {
            HStack {
                Text(event.name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                SaveForLaterButton(isSet: $modelData.event[eventIndex].isFavorite)
            }
            
       HStack {
           Text(event.location)
                .font(.subheadline)
                .multilineTextAlignment(.center)
           Text(event.country)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
            }
            Text(event.date)
                .multilineTextAlignment(.center)
                .font(.subheadline)
            Text(event.price )
                .multilineTextAlignment(.center)
                .font(.subheadline)
            
            Link(destination: event.url, label: {Text("Buy Now")
                    .font(.title2)
                    .bold()
                    .frame(width: 280, height: 50)
                
                    .background(LinearGradient(gradient: Gradient(colors:[Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            })
            
        }
        .padding()
            
        Spacer()

        }
    }
}


struct EventDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        EventDetailView(event: ModelData().event[0])
            .environmentObject(modelData)
    }
}
