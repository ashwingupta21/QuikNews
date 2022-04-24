//
//  TrendingDetail.swift
//  QuikNews
//
//  Created by Wafi Choudhury on 4/19/22.
//

import SwiftUI

struct TrendingDetail: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {

        
        ScrollView (showsIndicators: false){
            
            LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]){
                
                ForEach(model.trending) { trendingStory in
                    
                    NavigationLink(
                        destination: LaunchView(),
                        label: {
                           
                            
                            
                            
                        })
                    
                
            }
            
            
        }
            
            
        }
        

    }
}

struct TrendingDetail_Previews: PreviewProvider {
    static var previews: some View {
        TrendingDetail()
    }
}
