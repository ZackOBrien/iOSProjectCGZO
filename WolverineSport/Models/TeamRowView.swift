//
//  TeamRowView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 12/7/22.
//

import SwiftUI

struct TeamRowView: View {
    
    var team = Team()
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "\(team.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
                VStack(alignment: .leading){
                    Text("\(team.name)")
                        .bold()
                    Text("\(team.win)-\(team.loss)-\(team.tie)")
                }
                
            }
            Divider()
        }
    }
}

struct TeamRowView_Previews: PreviewProvider {
    static var previews: some View {
        TeamRowView()
    }
}
