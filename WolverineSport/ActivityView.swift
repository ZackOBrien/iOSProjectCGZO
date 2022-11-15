//
//  ActivityView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("A-League Teams:")
                    .frame(maxWidth: .infinity, alignment: .leading)
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
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
