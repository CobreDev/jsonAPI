//
//  commentViewModel.swift
//  jsonAPI
//
//  Created by Cobre on 6/21/22.
//

import Foundation

class apiCall {
    func getUserComments(completion:@escaping ([Drivers]) -> ()) {
        guard let url = URL(string: "http://ergast.com/api/f1/2022/drivers.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let drivers = try! JSONDecoder().decode([Drivers].self, from: data!)
            let drivers = try! JSONDecoder().decode(Root.self, from: data!)
            print("drivers", drivers.mrdata.drivertable.drivers.givenName)
//            print(drivers)
            
            DispatchQueue.main.async {
//                completion(drivers)
                completion(drivers.mrdata.drivertable.drivers)
            }
        }
        .resume()
    }
}
