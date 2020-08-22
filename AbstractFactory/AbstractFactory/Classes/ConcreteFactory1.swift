//
//  ConcreteFactory1.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import Foundation
import SwiftUI

class ConcreteFactory1: AbstractFactory {

    func createProductA() -> AbstractProductA {
        return ConcreteProductA1()
    }

    func createProductB() -> AbstractProductB {
        return ConcreteProductB1()
    }
}
