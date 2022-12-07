//
//  ProfileView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var bio = "Hello I am Chris Gerello, I am a senior\nComputer Science major. I enjoy to play in intermural sports with my friends and having this app has sure streamlined the process of signing-up, finding a team, and playing games."
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
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
//            Spacer()
            Text("Biography:")
                .font(.title2)
                .bold()
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding(.bottom, 2)
            TextEditor(text: $bio)
                .padding(.horizontal)
                .foregroundColor(.black)
            
        }
        .padding(.horizontal)
        }
    }
}

struct ProfileHeader: View {
    var body: some View {
        Text("hello")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

