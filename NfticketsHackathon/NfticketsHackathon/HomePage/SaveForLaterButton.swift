//
//  SaveForLaterButton.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct SaveForLaterButton: View {
    @Binding var isSet: Bool
    
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : . gray)
        }
    }
}

struct SaveForLaterButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveForLaterButton(isSet: .constant(true))
    }
}
