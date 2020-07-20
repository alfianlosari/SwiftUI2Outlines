//
//  ItemsList.swift
//  Outlines&Disclosures
//
//  Created by Alfian Losari on 19/07/20.
//

import SwiftUI

struct ItemsList: View {
    
    let items: [Item]
    
    var body: some View {
        List(items, children: \.children) {
            Text($0.title)
        }
    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList(items: Item.stubs)
    }
}
