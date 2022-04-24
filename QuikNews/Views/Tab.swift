//
//  TabView.swift
//  QuikNews
//
//  Created by Wafi Choudhury on 4/15/22.
//

import SwiftUI

struct Tab: View {
    var body: some View {
    
        //NewsDetailView()
       // .environmentObject(ContentModel())
        
        
        TabView{
            
            //list of all news categories
            NewsDetailView()
                .environmentObject(ContentModel())
             .tabItem {
                 Label("Categories", systemImage: "list.bullet.rectangle.fill").foregroundColor(.white)
             }
            
            //home page similar to FYP
                NewsDetailView()
                 .environmentObject(ContentModel())
                 .tabItem {
                     Label("Home", systemImage: "house.fill").foregroundColor(.white)
                 }
            
            //
            TrendingList()
             .environmentObject(ContentModel())
             .tabItem {
                 Label("Trending", systemImage: "chart.line.uptrend.xyaxis.circle.fill").foregroundColor(.white)
             }
            
          
        }
            
            
        
    }
}

