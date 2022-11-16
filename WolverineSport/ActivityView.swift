//
//  ActivityView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ActivityView: View {
    @State var sport = ""
    var body: some View {
        ScrollView {
            VStack{
                HStack{
                    Image(systemName: "\(sport.lowercased())")
                        .resizable()
                        .frame(width: 125, height: 125)
                        .foregroundColor(.red)
                        .padding(.trailing)
                    VStack{
                        Text("IM \(sport)")
                            .font(.title)
                            .bold()
                        Text("Fall 2022")
                    }
                }
//                .padding()
                HStack{
                    Button{
                        print("tried to add team")
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

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(sport: "Basketball")
    }
}
