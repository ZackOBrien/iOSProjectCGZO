//
//  ActivityView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ActivityView: View {
    @EnvironmentObject var VM: ViewModel
    var sport = Sport()
    //@State var sport = ""
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Image(systemName: "\(sport.image)")
                        .resizable()
                        .frame(width: 125, height: 125)
                        .foregroundColor(.red)
                        .padding(.trailing)
                    VStack{
                        Text("IM \(sport.name)")
                            .font(.title)
                            .bold()
                        Text("Fall 2022")
                    }
                }
//                .padding()
                HStack{
                    NavigationLink {
                        CreateView()
                    } label: {
                        Text("Create a Team")
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(40)
                    }
                    Button{
                        print("tried to join team")
                    } label: {
                        Text("Join a Team")
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(40)
                    }
                }
                
                Text("A-League Teams:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.bold()
                    .padding(.leading)
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(sport.a_league) {s in
                            NavigationLink{
                                TeamView(team: s)
                            } label: {
                                HStack{
                                    Image(systemName: "\(s.image)")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                    Text("\(s.name)")
                                        .font(.title2)
                                }
                                .foregroundColor(.white)
                                .frame(width: 150, height: 125)
                                .background(.red)
                                .cornerRadius(20)
                            }
                        }
                    }
                }
                .padding()
                
                Text("B-League Teams:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.bold()
                    .padding(.leading)
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(sport.b_league) {s in
                            NavigationLink{
                                TeamView(team: s)
                            } label: {
                                HStack{
                                    Image(systemName: "\(s.image)")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                    Text("\(s.name)")
                                        .font(.title2)
                                }
                                .foregroundColor(.white)
                                .frame(width: 150, height: 125)
                                .background(.red)
                                .cornerRadius(20)
                            }
                        }
                    }
                }
                .padding()
                
                Text("C-League Teams:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.bold()
                    .padding(.leading)
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(sport.c_league) {s in
                            NavigationLink{
                                TeamView(team: s)
                            } label: {
                                HStack{
                                    Image(systemName: "\(s.image)")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                    Text("\(s.name)")
                                        .font(.title2)
                                }
                                .foregroundColor(.white)
                                .frame(width: 150, height: 125)
                                .background(.red)
                                .cornerRadius(20)
                            }
                        }
                    }
                }
                .padding()
            }
        }//
    }
}

//struct ActivityView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActivityView(sport: Sport())
//    }
//}
