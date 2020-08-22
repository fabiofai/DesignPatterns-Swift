//
//  ConcreteFactory2.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import Foundation
import SwiftUI

class ConcreteFactory2: AbstractFactory {

    func createProductA() -> AbstractProductA {
        return ConcreteProductA2()
    }

    func createProductB() -> AbstractProductB {
        return ConcreteProductB2()
    }

}
