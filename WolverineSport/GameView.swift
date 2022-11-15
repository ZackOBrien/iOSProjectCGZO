//
//  GameView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack{
            Text("Game")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
            HStack{
                VStack{
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    Text("Basketball Friends")
                    Text("Record: 12-1")
                }
                .frame(width: 150, height: 100)
                Text("VS")
                    .font(.title)
                    .foregroundColor(.red)
                VStack{
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    Text("Team Tom")
                    Text("Record: 1-12")
                }
                .frame(width: 150, height: 100)
            }
            .foregroundColor(.black)
            Text("The Game's Location:")
                .font(.title2)
                .bold()
                .frame(width: 375, height: 12, alignment: .leading)
            MapView()
                .cornerRadius(20)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
