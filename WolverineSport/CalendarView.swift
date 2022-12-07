//
//  CalendarView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        VStack() {
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.system(size: 23))
                .bold()
                .foregroundColor(.accentColor)
                .padding()
                .animation(.spring(), value: selectedDate)
                .frame(width: 300)
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
                .foregroundColor(.red)
            Divider()
            //Text("Events:")
                //.font(.largeTitle)
                //.multilineTextAlignment(.center)
            NavigationView{
                List{
                        Text("A League Basketball Championship")
                            .font(.title3)
                            .foregroundColor(.black)
                        Text("B League Volleyball Game")
                            .font(.title3)
                            .foregroundColor(.black)
                        Text("C League Ping Pong Semifinals")
                            .font(.title3)
                            .foregroundColor(.black)
                }
                .navigationBarHidden(true)
            }
        }
//        .padding(.vertical, 25)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
