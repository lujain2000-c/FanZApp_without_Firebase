//
//  DataManager.swift
//  FanzAppChallenge
//
//  Created by لجين إبراهيم الكنهل on 18/12/1445 AH.
//

import SwiftUI

//import Firebase
//import FirebaseCore
//import FirebaseFirestore

class DataManager: ObservableObject {
    @Published var player = PlayerModel(  country: "SAUDI ARABIA",
                                          image: "https://cdn.futwiz.com/assets/img/fc24/faces/67129665.png",
                                          name: "Cristiano Ronaldo",
                                          number: "7",
                                          position: "CENTRE FORWARD",
                                          price: "20m",
                                          rating: 7.6,
                                          team: "AL NASSER"
                                  )
    @Published var players: [PlayerModel] = [
        PlayerModel(
            country: "SAUDI ARABIA",
            image: "https://cdn.futwiz.com/assets/img/fc24/faces/67129665.png",
            name: "Cristiano Ronaldo",
            number: "7",
            position: "CENTRE FORWARD",
            price: "20m",
            rating: 7.6,
            team: "AL NASSER"
    ),
        PlayerModel(
            country: "Egypt",
            image: "data:image/jpeg;base64,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",
            name: "Mohamed Sala",
            number: "11",
            position: "CENTRE FORWARD",
            price: "15m",
            rating: 5.6,
            team: "AL HILAL"
            )
                                                
                                               
        ]
    
    //let db = Firestore.firestore()
    
    
//    func fetchAllPlayer(){ // تم
//            
//                    self.db.collection("player").getDocuments() { (querySnapshot, err) in
//                        if let err = err {
//                            print("Error getting documents: \(err)")
//                        } else {
//                            var players1: [PlayerModel] = []
//                            for doc in querySnapshot!.documents{
//                                let data = doc.data()
//                                let playerCountry = data["country"] as! String
//                                let playerImage = data["image"] as! String
//                                let playerName = data["name"] as! String
//                                let playerNumber = data["number"] as! String
//                                let playerPrice = data["price"] as! String
//                                let playerPosition = data["position"] as! String
//                                let playerRating = data["rating"] as! Double
//                                let playerTeam = data["team"] as! String
//                               let player = PlayerModel(country: playerCountry, image: playerImage, name: playerName, number: playerNumber, position: playerPosition, price: playerPrice, rating: playerRating, team: playerTeam)
//                                players1.append(player)
//                                
//                            }
//                            self.players = players1
//                            
//                        }
//                    }
//              
//            
//          
//        }
    
//    func fetchPlayer(playerNum: String){
//            
//
//         
//        if(playerNum == "7"){
//            self.db.collection("player").document("1").getDocument { (document, error) in
//                if let error = error {
//                    print("Error getting documents: (error)")
//                } else {
//                    guard let document = document, document.exists else {
//                        print("No matching documents.")
//                        return
//                    }
//                   
//                    
//                    let data = document.data()
//                    let playerCountry = data?["country"] as! String
//                    let playerImage = data?["image"] as! String
//                    let playerName = data?["name"] as! String
//                    let playerNumber = data?["number"] as! String
//                    let playerPrice = data?["price"] as! String
//                    let playerPosition = data?["position"] as! String
//                    let playerRating = data?["rating"] as! Double
//                    let playerTeam = data?["team"] as! String
//                    self.player = PlayerModel(country: playerCountry, image: playerImage, name: playerName, number: playerNumber, position: playerPosition, price: playerPrice, rating: playerRating, team: playerTeam)
//                    
//                    
//                    // }
//                }
//            }
//        } else {
//            self.db.collection("player").document("2").getDocument { (document, error) in
//                if let error = error {
//                    print("Error getting documents: (error)")
//                } else {
//                    guard let document = document, document.exists else {
//                        print("No matching documents.")
//                        return
//                    }
//                    
//                    let data = document.data()
//                    let playerCountry = data?["country"] as! String
//                    let playerImage = data?["image"] as! String
//                    let playerName = data?["name"] as! String
//                    let playerNumber = data?["number"] as! String
//                    let playerPrice = data?["price"] as! String
//                    let playerPosition = data?["position"] as! String
//                    let playerRating = data?["rating"] as! Double
//                    let playerTeam = data?["team"] as! String
//                    self.player = PlayerModel(country: playerCountry, image: playerImage, name: playerName, number: playerNumber, position: playerPosition, price: playerPrice, rating: playerRating, team: playerTeam)
//                    
//                    
//                    // }
//                }
//            }
//            
//        }
// 
//        
//            
//            
//        }
   
}
