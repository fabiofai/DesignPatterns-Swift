//
//  AbstractProductB.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import Foundation

protocol AbstractProductB {
    func usefulFunctionB() -> String
    func anotherUsefulFunctionB(collaborator: AbstractProductA) -> String
}
