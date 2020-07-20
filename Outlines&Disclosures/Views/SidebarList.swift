//
//  SidebarList.swift
//  Outlines&Disclosures
//
//  Created by Alfian Losari on 19/07/20.
//

import SwiftUI

struct SidebarList: View {
    let items: [Item]
    
    var body: some View {
        List {
            Label("Home", systemImage: "house")
            
            Divider()
            
            OutlineGroup(items, children: \.children) {
                Text($0.title)
            }
            
            Divider()
            
            Section(header: Text("Settings")) {
                Label("Account", systemImage: "person.crop.circle")
                Label("Help", systemImage: "person.3")
                Label("Logout", systemImage: "applelogo")
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct SidebarList_Previews: PreviewProvider {
    static var previews: some View {
        SidebarList(items: Item.stubs)
    }
}
