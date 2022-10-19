//
//  ContentView.swift
//  intergalacticTravel
//
//  Created by caden christesen on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack{
                    StarLink(name: "BlueStar")
                .padding()
                    StarLink(name: "RedDwarf")
                .foregroundColor(.red)
            }
                .navigationBarTitle("Intergalactic Travel", displayMode: .inline)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct StarLink: View {
    let name: String
    var body: some View{
        NavigationLink("Travel to \(name)"){
            Image(name)
                .resizable()
                .aspectRatio(contentMode:   .fill)
        }
    }
}
