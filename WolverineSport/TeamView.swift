//
//  TeamView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct TeamView: View {
    @EnvironmentObject var VM: ViewModel
    var team = Team()
    
    var body: some View {
        VStack{
            Image(systemName: "\(team.image)")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Text("\(team.name)")
                .font(.largeTitle)
            Text("\(team.league)")
            Text("Record: \(team.win)-\(team.tie)-\(team.loss)")
            List{
                ForEach(team.members, id: \.self){ member in
                    Text("\(member)")
                }
//                Text("Chris Gerello (Captain)")
//                Text("Zack O'Brien")
//                Text("Tyler Fontana")
//                Text("Kevin Hamby")
//                Text("Grace Barnes")
//                Text("Sean Matthews")
//                Text("Dean O'Toole")
//                Text("Thomas St. John")
//                Text("Michael Kutschke")
//                Text("Kat Shi")
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(team: Team())
    }
}
