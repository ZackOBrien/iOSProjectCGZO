//
//  ViewModel.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/22/22.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var sports = [Sport]()
    
    init(){
        readJSONFile()
    }
    
    func readJSONFile(){
        // 1. pathString
        let pathString = Bundle.main.path(forResource: "sports", ofType: "json")
        
        if let path = pathString{
            
            // 2. URL
            let url = URL(fileURLWithPath: path)
            // 3. Data object
            do{
                let data = try Data(contentsOf: url)
                // 4. json decoder
                let jsonDecoder = JSONDecoder()
                
                // 5. get json data
                let jsonData = try jsonDecoder.decode(SportAll.self, from: data)
                
                for i in 0..<jsonData.sports_array.count {
                    jsonData.sports_array[i].id = UUID()
                }
                
                sports = jsonData.sports_array
                
                
            } catch{
                print("slayyyy ")
                
            }
            
        }else{
            
        }
        
    }
}

