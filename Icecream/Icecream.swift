//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
                                      "Tim" : "Natural Vanilla",
                                      "Sophie" : "Mexican Chocolate",
                                      "Deniz" : "Natural Vanilla",
                                      "Tom" : "Mexican Chocolate",
                                      "Jim" : "Natural Vanilla",
                                      "Susan" : "Cookies 'N' Cream"
                                    ]
    
    
    
    // 2.
    func names (forFlavor flavor: String) -> [String] {
        var matchingIceScream: [String] = []
        for person in favoriteFlavorsOfIceCream {
            if person.value == flavor {
                matchingIceScream.append(person.key)
            }
        }
        return matchingIceScream
    }
    
    
    
    
    
    // 3.
    
    func count(forflavor flavor: String) -> Int {
        var count = 0
        for flavors in favoriteFlavorsOfIceCream.values {
            if flavors == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    // 4.
   
    
    func flavor(forPerson person: String) -> String? {
        guard let person = favoriteFlavorsOfIceCream[person] else {
            return nil
        }
        return person
    }
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        let yesOrNo = favoriteFlavorsOfIceCream[forPerson]
        
        guard yesOrNo != nil else {
            return false
        }
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
        return true
    }
    
    
    
    
    
    // 6.
    
    
    func remove(person: String) -> Bool{
        let yesOrNo = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        
        if yesOrNo == nil {
            return false
        } else {
            return true
        }
        
    }
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
       return favoriteFlavorsOfIceCream.keys.count
        
    }
    
    
    
    
    
    
    // 8.
    
    
    func add(person: String, withFlavor: String) -> Bool {
        let alreadyOrNot = favoriteFlavorsOfIceCream[person]
        guard  alreadyOrNot == nil else {
            return false
        }
        favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
        return true
    }
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String{
       let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var listInString = ""
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if allNames[allNames.count - 1] == name {
                    listInString.append("\(name) likes \(flavor)")
                } else {
                listInString.append("\(name) likes \(flavor)\n")
                }
            }
        }
        return listInString
    }
  

}
