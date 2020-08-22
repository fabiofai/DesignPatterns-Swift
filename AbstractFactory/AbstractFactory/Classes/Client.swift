//
//  Client.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import Foundation
import SwiftUI

class Client {

    static func someClientCode(factory: AbstractFactory) -> (result1: String, result2: String, result3: String) {
        let productA = factory.createProductA()
        let productB = factory.createProductB()

        return
            (productA.usefulFunctionA(),
             productB.usefulFunctionB(),
             productB.anotherUsefulFunctionB(collaborator: productA))
    }
}
