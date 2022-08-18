//
//  Profile.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 15/08/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                  
                        Text("My Profile")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .center)
                }
                VStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    Text("User Name")
                        .font(.title3)
                        .fontWeight(.medium)
                 
            
                    HStack(alignment: .top, spacing: 10) {
                    
                    Image(systemName: "bitcoinsign.circle")
                        .foregroundColor(.black)
                    Text("Bitcoin Address")
                            .fontWeight(.medium)
                }
            }
                .padding([.vertical, . horizontal])
                .background(LinearGradient(gradient: Gradient(colors:
                [Color.blue, Color.purple]), startPoint: .leading, endPoint: . trailing))
                .foregroundColor(.white)
                .cornerRadius(12)
                .padding()
                
                CustomNavigationLink(title: "Edit Profile"){

                    Text("")
                        .navigationTitle("Edit Profile")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                       
                }
                
                CustomNavigationLink(title: "My Tickets"){
                        
                        Text("It looks like you don't have any active tickets right now, browse the search bar for any events you may like...")
                        .padding(.horizontal)
                        .foregroundColor(.secondary)
                    
                    
                        .navigationTitle("My Tickets")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
    
                       
                }
                CustomNavigationLink(title: "Your Communites"){
                    
                    Text("")
                        .navigationTitle("Your Communities")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }

                CustomNavigationLink(title: "Bitcoin Wallet"){
                    
                    Text("")
                        .navigationTitle("Bitcoin Wallet")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                CustomNavigationLink(title: "Account Settings"){
                    
                    Text("")
                        .navigationTitle("Account Settings")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                CustomNavigationLink(title: "Contact Us"){
                    Text("devonshirej123@gmail.com")
                        .navigationTitle("Contact Us")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }

                
        }
    }
}
    @ViewBuilder
    
    func CustomNavigationLink<Detail: View>(title: String, ViewBuilder content: @escaping ()->Detail)-> some View {
        
        NavigationLink{
            content()
        } label: {
            HStack{
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.black)
            .padding()
            .background(
                Color.white
                    .cornerRadius(12).opacity(0.7)
            )
            .padding(.horizontal)
            .padding(.top,10)
        }
        
    }
    
    
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
