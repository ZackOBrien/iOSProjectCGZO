//
//  ProfileView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
        VStack{
            HStack{
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 85, height: 85)
                    .foregroundColor(.red)
                    .padding()
                VStack{
                    Text("Chris Gerello")
                        .font(.title2)
                        .bold()
                    Text("Senior 23'")
                    Text("Computer Science")
                    Text("Number of Teams: 10")
                }
            }
            Spacer()
            Text("Biography:")
                .font(.title2)
                .bold()
                .frame(maxWidth:.infinity, alignment: .leading)
            Text("Hello I am Chris Gerello, I am a senior Computer Science major. I enjoy to play in intermural sports with my friends and having this app has sure streamlined the process of signing-up, finding a team, and playing games.")
                .foregroundColor(.black)
            Text("Your Teams:")
                .font(.title2)
                .bold()
                .frame(maxWidth:.infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<10) {_ in
                        NavigationLink{
                            TeamView()
                        } label: {
                            HStack{
                                Image(systemName: "circle")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                Text("Team")
                                    .font(.title2)
                            }
                            .foregroundColor(.white)
                            .frame(width: 150, height: 100)
                            .background(.red)
                            .cornerRadius(20)
                        }
                    }
                }
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

