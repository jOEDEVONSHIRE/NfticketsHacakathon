//
//  ContentView.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import SwiftUI



struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
        case profile
        case search
        case map
        case mapv
    }
        
    
    var body: some View {
        TabView(selection: $selection) {
           
        CatergoryHome()
                .tabItem {
                    Label("Home", systemImage: "house")
        }
        .tag(Tab.featured)
            SearchView()
                    .tabItem{
                        Label("search", systemImage: "paperplane")
                    }
                    .tag(Tab.search)

        Profile()
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(Tab.profile)
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
