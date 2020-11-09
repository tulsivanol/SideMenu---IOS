//
//  ContentView.swift
//  SideMenuApp
//
//  Created by Tulsi Vanol on 09/11/20.
//  Copyright © 2020 Tulsi Vanol. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        GeometryReader{geometry in
            ZStack(alignment:.leading){
                MainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x:self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true:false)
                
                if self.showMenu{
                    MenuView()
                        .frame(width: geometry.size.width/2)
                }
            }
                .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
