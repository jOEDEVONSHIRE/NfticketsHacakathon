//
//  SearchView.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct SearchView: View {
    private var SearchList = listOfSearches
    @State var searchText = ""
    
    
    
    
    var body: some View {
        NavigationView {
            List {

            }
            .searchable(text: $searchText)
            .navigationTitle("Search")
        }
    }
  
    
    var searches: [String] {
        let lcSearches = SearchList.map { $0.lowercased() }
        
        return searchText == "" ? lcSearches : lcSearches.filter {
            $0.contains(searchText.lowercased())
        }
        
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
