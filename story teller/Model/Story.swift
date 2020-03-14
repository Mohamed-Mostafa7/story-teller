//
//  Story.swift
//  story teller
//
//  Created by MoHaMeD MoStAfA on 3/14/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import Foundation
struct Story {
    var title: String
    var choice1: String
    var choice2: String
    var destination1: Int
    var destination2: Int
    init(title:String, choice1:String, choice2: String, destination1: Int,destination2: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.destination1 = destination1
        self.destination2 = destination2
    }
}
