//
//  CreateView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 12/3/22.
//

import SwiftUI

struct CreateView: View {
    
    @EnvironmentObject var VM: ViewModel
    
    @State var sport = ""
    @State var league = ""
    @State var name = ""
    @State var image = ""
    @State var team = Team()
    
    var id: Int {
        get{
            
            return 0
        }
    }
    
    let leagues = ["A-League", "B-League", "C-League"]
    
    var body: some View {
            Form{
                Section(header: Text("Select the Sport")){
                    Picker("Sport", selection: $sport) {
                        ForEach(VM.sports){ s in
                            Text("\(s.name)")
                                .tag(s.name)
                        }
                    }
                }
                Section(header: Text("Select the League")){
                    Picker("League", selection: $league) {
                        ForEach (0..<3) { //to avoid warning we used literal 3 instead of leagues.size
                            Text("\(leagues[$0])")
                                .tag(leagues[$0])
                        }
                    }
                }
                Section(header: Text("Enter your Team Name:")){
                    TextField("Tigers", text: $name)
                }
                Section(header: Text("Enter your Image Title:")){
                    TextField("TigersImage", text: $image)
                }
                Button{
                    print("\(name) were added to \(league) in \(sport)")
                    team.league = league
                    team.name = name
                    team.image = image
                    team.loss = 0
                    team.win = 0
                    team.tie = 0
                    team.id = id
//                    ForEach(VM.sports){ s in
//                        if(s.name == sport){
//                            if(league == "A-League"){
//                                s.a_league.append(team)
//                            } else if(league == "B-League"){
//                                s.b_league.append(team)
//                            } else{
//                                s.c_league.append(team)
//                            }
//                        }
//                    }
                    
                } label: {
                    Text("Create")
                }
            }
            .navigationTitle("Create Team")
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
            .environmentObject(ViewModel())
    }
}
