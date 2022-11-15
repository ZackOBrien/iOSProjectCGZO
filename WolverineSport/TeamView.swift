//
//  TeamView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        VStack{
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Text("Team Basketball Friends")
                .font(.largeTitle)
            Text("A-League")
            Text("Record: 12-1")
            List{
                Text("Chris Gerello (Captain)")
                Text("Zack O'Brien")
                Text("Tyler Fontana")
                Text("Kevin Hamby")
                Text("Grace Barnes")
                Text("Sean Matthews")
                Text("Dean O'Toole")
                Text("Thomas St. John")
                Text("Michael Kutschke")
                Text("Kat Shi")
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
