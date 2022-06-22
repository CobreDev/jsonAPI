//
//  ContentView.swift
//  jsonAPI
//
//  Created by Cooper Hull on 6/21/22.
//

import SwiftUI

struct ContentView: View {
    //1.
    @State var drivers = [Drivers]()
    
    var body: some View {
        NavigationView {
            //3.
            List(drivers) { driver in
                VStack(alignment: .leading) {
                    Text(driver.givenName)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(driver.familyName)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(driver.url)
                        .font(.body)
                }
                
            }
            //2.
            .onAppear() {
                apiCall().getUserComments { (drivers) in
                    self.drivers = drivers
                }
            }.navigationTitle("Drivers")
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
