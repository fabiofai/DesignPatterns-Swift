//
//  ConcreteProductB1.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import Foundation
import SwiftUI

class ConcreteProductB1: AbstractProductB {

    func usefulFunctionB() -> String {
        return "The result of the product B1."
    }

    func anotherUsefulFunctionB(collaborator: AbstractProductA) -> String {
        let result = collaborator.usefulFunctionA()
        return "The result of the B1 collaborating with the (\(result))"
    }

}
