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
                VStack{
                    Section(header: Text("A-League Teams").font(.title2).bold()){
                        ForEach(sport.a_league) { t in
                            NavigationLink {
                                TeamView(team: t)
                            } label: {
                                TeamRowView(team: t)
                                    .padding([.leading, .trailing])
                            }
                        }
                    }
                }
                
                VStack{
                    Section(header: Text("B-League Teams").font(.title2).bold()){
                        ForEach(sport.b_league) { t in
                            NavigationLink {
                                TeamView(team: t)
                            } label: {
                                TeamRowView(team: t)
                                    .padding([.leading, .trailing])
                            }
                        }
                    }
                }

                VStack{
                    Section(header: Text("C-League Teams").font(.title2).bold()){
                        ForEach(sport.c_league) { t in
                            NavigationLink {
                                TeamView(team: t)
                            } label: {
                                TeamRowView(team: t)
                                    .padding([.leading, .trailing])
                            }
                        }
                    }
                }
            }
        }//
    }
}

//struct ActivityView_Previews: PreviewProvider {
//    static var previews: some View {
//        ActivityView(sport: Sport())
//    }
//}
