//
//  Sport.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/22/22.
//

import Foundation

//struct Recipe : Identifiable{
struct Sport : Decodable, Identifiable{
    
    var id : UUID? //= UUID() // Unique identifier
    var name = ""
    var image = ""
    //var a_league = [Team]()
        
}
