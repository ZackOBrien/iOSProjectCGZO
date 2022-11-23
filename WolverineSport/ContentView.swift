//
//  ContentView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var VM: ViewModel
    
    var body: some View {
        VStack{
            VStack{
                Text("Wolverine Sports")
                    .bold()
                    .foregroundColor(.white)
            }.font(.largeTitle)
            TabView{
                HomeView()
                    .tabItem{
                        Image(systemName: "house.circle")
                        Text("Home")
                    }
                CalendarView()
                    .tabItem{
                        Image(systemName: "calendar.circle")
                        Text("Events")
                    }
                SportsView()
                    .tabItem{
                        Image(systemName: "list.bullet.clipboard")
                        Text("Avtivities")
                    }
                ProfileView()
                    .tabItem{
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }
            }
            .foregroundColor(.red)
        }
        .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
