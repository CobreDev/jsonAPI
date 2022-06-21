//
//  commentViewModel.swift
//  jsonAPI
//
//  Created by Cooper Hull on 6/21/22.
//

import Foundation

class apiCall {
    func getUserComments(completion:@escaping ([Comments]) -> ()) {
        guard let url = URL(string: "http://ergast.com/api/f1/2022/drivers.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let comments = try! JSONDecoder().decode([Comments].self, from: data!)
            print(comments)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }
        .resume()
    }
}
