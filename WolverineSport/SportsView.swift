//
//  SportView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct SportsView: View {
    
    @EnvironmentObject var VM: ViewModel
    
    var body: some View {
        VStack{
            NavigationView{
                ScrollView{
                    //we would use a ForEach statement here with a json file to load more data in
                    ForEach(VM.sports){ s in
                        NavigationLink {
                            ActivityView(sport: "\(s.name)")
                        } label: {
                            HStack{
                                Image(systemName: "\(s.image)")
                                    .resizable()
                                    .frame(width: 85, height: 85, alignment: .leading)
                                    .foregroundColor(.red)
                                Spacer()
                                Text("\(s.name)")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                            }
                            .padding()
                        }
                        .frame(width: 350, height: 125)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(radius: 20)
                        .padding(.horizontal)
                    }
//                    NavigationLink {
//                        ActivityView(sport: "Football")
//                    } label: {
//                        HStack{
//                            Image(systemName: "football")
//                                .resizable()
//                                .frame(width: 85, height: 85, alignment: .leading)
//                                .foregroundColor(.red)
//                            Spacer()
//                            Text("Football")
//                                .foregroundColor(.black)
//                                .font(.largeTitle)
//                        }
//                        .padding()
//                    }
//                    .frame(width: 350, height: 125)
//                    .background(Color.white)
//                    .cornerRadius(25)
//                    .shadow(radius: 20)
//                    .padding(.horizontal)
//
//                    NavigationLink {
//                        ActivityView(sport: "Basketball")
//                    } label: {
//                        HStack{
//                            Image(systemName: "basketball")
//                                .resizable()
//                                .frame(width: 85, height: 85, alignment: .leading)
//                                .foregroundColor(.red)
//                            Spacer()
//                            Text("Basketball")
//                                .foregroundColor(.black)
//                                .font(.largeTitle)
//                        }
//                        .padding()
//                    }
//                    .frame(width: 350, height: 125)
//                    .background(Color.white)
//                    .cornerRadius(25)
//                    .shadow(radius: 20)
//                    .padding(.horizontal)
//
//                    NavigationLink {
//                        ActivityView(sport: "Ping Pong")
//                    } label: {
//                        HStack{
//                            Image(systemName: "figure.table.tennis")
//                                .resizable()
//                                .frame(width: 85, height: 85, alignment: .leading)
//                                .foregroundColor(.red)
//                            Spacer()
//                            Text("Ping Pong")
//                                .foregroundColor(.black)
//                                .font(.largeTitle)
//                        }
//                        .padding()
//                    }
//                    .frame(width: 350, height: 125)
//                    .background(Color.white)
//                    .cornerRadius(25)
//                    .shadow(radius: 20)
//                    .padding(.horizontal)
//
//                    NavigationLink {
//                        ActivityView(sport: "Soccerball")
//                    } label: {
//                        HStack{
//                            Image(systemName: "soccerball")
//                                .resizable()
//                                .frame(width: 85, height: 85, alignment: .leading)
//                                .foregroundColor(.red)
//                            Spacer()
//                            Text("Soccer")
//                                .foregroundColor(.black)
//                                .font(.largeTitle)
//                        }
//                        .padding()
//                    }
//                    .frame(width: 350, height: 125)
//                    .background(Color.white)
//                    .cornerRadius(25)
//                    .shadow(radius: 20)
//                    .padding(.horizontal)
//
//                    NavigationLink {
//                        ActivityView(sport: "Volleyball")
//                    } label: {
//                        HStack{
//                            Image(systemName: "volleyball")
//                                .resizable()
//                                .frame(width: 85, height: 85, alignment: .leading)
//                                .foregroundColor(.red)
//                            Spacer()
//                            Text("VolleyBall")
//                                .foregroundColor(.black)
//                                .font(.largeTitle)
//                        }
//                        .padding()
//                    }
//                    .frame(width: 350, height: 125)
//                    .background(Color.white)
//                    .cornerRadius(25)
//                    .shadow(radius: 20)
//                    .padding(.horizontal)
                }
                .navigationTitle("Activities")
            }
        }
    }
}

struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView()
            .environmentObject(ViewModel())
    }
}
