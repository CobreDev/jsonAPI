//
//  ContentView.swift
//  jsonAPI
//
//  Created by Cooper Hull on 6/21/22.
//

import SwiftUI

struct ContentView: View {
    //1.
    @State var comments = [Comments]()
    
    var body: some View {
        NavigationView {
            //3.
            List(comments) { comment in
                VStack(alignment: .leading) {
                    Text(comment.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(comment.email)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(comment.body)
                        .font(.body)
                }
                
            }
            //2.
            .onAppear() {
                apiCall().getUserComments { (comments) in
                    self.comments = comments
                }
            }.navigationTitle("Comments")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
