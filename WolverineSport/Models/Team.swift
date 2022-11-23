//
//  Team.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/23/22.
//

import Foundation

struct Team : Decodable, Identifiable{
    
    var id = 0 //= UUID() // Unique identifier
    var name = ""
    var image = ""
    var league = ""
    var win = 0
    var tie = 0
    var loss = 0
    var members = [String]()
}
