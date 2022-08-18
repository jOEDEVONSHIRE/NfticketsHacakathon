//
//  ImageForTicket.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import SwiftUI

struct ImageForTicket: View {
    var image: Image
    
    var body: some View {
        image
        
        
            .resizable()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .scaledToFit() 
    }
}

struct ImageForTicket_Previews: PreviewProvider {
    static var previews: some View {
        ImageForTicket(image: Image("JohnMayer"))
    }
}
