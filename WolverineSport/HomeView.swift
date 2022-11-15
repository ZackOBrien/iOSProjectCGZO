//
//  HomeView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct HomeView: View {
    @State var tmp : Int = 600000
    let countDown = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    var formattedString : String{
        let days = tmp / 86400 // 1/60 minute -> 1/60 hours -> days
        let hours = (tmp - days * 86400) / 3600 //subtracts the seconds for the day then calculates hours 1/60 minutes -> 1/60 hours
        let minutes = (tmp - days * 86400 - hours * 3600) / 60 // subtracts second fors days, hours. then calculates minute 1/60 minutes
        let seconds = tmp - days * 86400 - hours * 3600 - minutes * 60 //subtrcts seconds for days, hours and minutes to get the remaining seconds.
        return String(format: "Days: %.2i \n %.2i:%.2i:%.2i", days, hours, minutes, seconds)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink{
                    GameView()
                } label: {
                    VStack{
                        Text("Your Next Game:")
                            .font(.title)
                            .underline()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("\(formattedString)")
                            .font(.title)
                            .onReceive(countDown){ _ in //this is the count down clock
                                //the function here wil execute every one second
                                tmp -= 1
                            }
                    }
                    .foregroundColor(.black)
                    .frame(width: 375, height: 150)
                    .background(Color.white)
                    .cornerRadius(25)
                    .shadow(radius: 20)
                    .padding()
                }
                
                VStack{
                    Text("Announcements:")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Image(systemName: "figure.basketball")
                             .resizable()
                             .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                        Text("A League Basketball Championship Today!")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    HStack(){
                        Image(systemName: "figure.soccer")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                        Text("B League Soccer Semifinals Today!")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    HStack(){
                        Image(systemName: "figure.volleyball")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                        Text("Zack is volleyball MVP!")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.leading)
                .frame(width: 375, height: 200)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 20)
                .padding()
                
                VStack{
                    Text("Upcomming games:")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                    HStack{
                        Text("Team 1 vs Team 2 A League Basketball")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Text("Team 6 vs Team 2 B League Soccer")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Text("Team 4 vs Team 5 C League Basketball")
                    }.frame(maxWidth: .infinity, alignment: .leading)
//                    Image(systemName: "square")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                        .foregroundColor(.red)
                }
                .padding(.leading)
                .frame(width: 375, height: 200)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 20)
                .padding(.horizontal)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
