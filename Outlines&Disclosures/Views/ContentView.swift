//
//  ContentView.swift
//  Outlines&Disclosures
//
//  Created by Alfian Losari on 17/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var sheetSelection: SheetType?
    
    var body: some View {
        NavigationView {
            List {
                Button(action: {
                    sheetSelection = .itemsList
                }, label: {
                    Text("List with hierarchical items")
                })
                
                Button(action: {
                    sheetSelection = .sidebarList
                }, label: {
                    Text("Sidebar List with OutlineGroup & Section")
                })
                
                Button(action: {
                    sheetSelection = .form
                }, label: {
                    Text("Form with DisclosureGroup")
                })
            }
            .sheet(item: self.$sheetSelection) {  sheet in
                switch sheet {
                case .itemsList:
                    ItemsList(items: Item.stubs)
                case .sidebarList:
                    SidebarList(items: Item.stubs)
                case .form:
                    FormList()
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("SwiftUI 2- Outlines")
        }
    }
}


enum SheetType: String, Identifiable {
    var id: String { self.rawValue}
    case itemsList
    case sidebarList
    case form
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
