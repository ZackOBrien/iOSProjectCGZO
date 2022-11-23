//
//  ViewModel.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/22/22.
//

import Foundation


class ViewModel : ObservableObject{
    
    @Published var sports = [Sport]()
    
    // construction method
    // called once a new instance is created
    // set up code
    init(){
        readJSON()
        
    }
    
    func readJSON(){
        //1. get the path to the json file with the app bundle
        let pathString = Bundle.main.path(forResource: "sports", ofType: "json")
        
        if let path = pathString{
            //2. create a URL Object
            let url = URL(fileURLWithPath: path)
            
            do{
                //3. create a data object with the URL File
                let data = try Data(contentsOf: url)
                
                //4. create a JSON decoder
                let json_dectetor = JSONDecoder()
                 
                //5. extract the models from the json file
                var json_data = try json_dectetor.decode([Sport].self, from: data)
                
                for index in 0..<json_data.count {
                    json_data[index].id = UUID()
                }
                
                sports = json_data
            }catch{
                print(error)
            }
        }
    }
    
    func addRecipe(r: Sport){
        sports.append(r)
    }
}

