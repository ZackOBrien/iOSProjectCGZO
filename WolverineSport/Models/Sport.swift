//
//  Sport.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/22/22.
//

import Foundation

class SportAll: Decodable{
    var number_of_sports = 0
    var sports_array = [Sport]()
}

class Sport: Identifiable, Decodable{
    
    var id: UUID?
    var name: String = ""
    var image: String = ""
    
}
