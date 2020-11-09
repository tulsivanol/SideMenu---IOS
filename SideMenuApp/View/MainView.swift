//
//  MainView.swift
//  SideMenuApp
//
//  Created by Tulsi Vanol on 09/11/20.
//  Copyright © 2020 Tulsi Vanol. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @Binding var showMenu:Bool
    
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment:.top){
                Button(action:{
                    self.showMenu.toggle()
                               print("Open Menu Clicked")
                           }){
                               Image(systemName: "person")
                           }
                
                Spacer()
            }.padding()
            
            Spacer()
        }.padding()
        
    }
}
