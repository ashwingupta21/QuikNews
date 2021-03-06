//
//  ContentModel.swift
//  QuikNews
//
//  Created by Wafi Choudhury on 4/12/22.
//

import Foundation
class ContentModel: NSObject, ObservableObject, Identifiable {

    
    @Published var news = [NewsObject]()
    @Published var trending = [TrendingModel]()
    
    override init(){

        super.init()
        
        news.append(NewsObject(id: "UUID", title: "The Latest Situation in the Presidential Election", body: "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races. " + "\n\n" + "For more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters."
                               
                               + "\n\n" +    "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races.", image: "quikpic"))
        
        news.append(NewsObject(id: "UUID", title: "Simpsons", body: "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races. " + "\n\n" + "For more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters."
                               
                               + "\n\n" +    "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races.", image: "quikpic", bodyHeader: "Results"))
        
        updateTrending()
    }
    
    func updateTrending(){
        
        
        trending.append(TrendingModel(image: news[1].image, category: "Technology", title: "Six steps to creating a color palette", newsArticle: news[0], id: "s1s"))
        trending.append(TrendingModel(image: news[1].image, category: "Technology", title: "Six steps to creating a color palette", newsArticle: news[0], id: "s2s"))
    }
}
