//
//  trendingMoviesResponseModel.swift
//  movieList
//
//  Created by Apple Atölyesi on 27.08.2024.
//

import Foundation

struct trendingMoviesResponseModel :
Codable{
    let page:Int
    let results:[MovieResponse]

}

struct MovieResponse:Codable {
    let id:Int
    let title:String
    let overview:String
    let poster_path:String
    let release_date:String
    let vote_avarage:Double
}
