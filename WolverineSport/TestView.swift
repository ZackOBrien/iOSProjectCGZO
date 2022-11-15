//
//  TestView.swift
//  WolverineSport
//
//  Created by Zack O'Brien on 11/14/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.red)
                    .padding()
                Text("Chris Gerello")
                    .font(.title2)
                    .bold()
            }
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
