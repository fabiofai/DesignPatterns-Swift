//
//  ViewController.swift
//  AbstractFactory
//
//  Created by Fabio Fai on 22/8/2020.
//  Copyright © 2020 Fabio Fai. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var currentProductFactory: Int = 1
    @State private var productAString: String = ""
    @State private var productBString: String = ""
    @State private var productBCollaboratingString: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Spacer()
                Text("Current Factory:")
                    .padding(.leading)
                    .padding(.trailing)
                Text("Factory \(currentProductFactory)")
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                
                Text("Product A:")
                    .padding(.leading)
                    .padding(.trailing)
                Text(productAString)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                
                Text("Product B:")
                    .padding(.leading)
                    .padding(.trailing)
                Text(productBString)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                
                Text("Product B Collaborating:")
                    .padding(.leading)
                    .padding(.trailing)
                Text(productBCollaboratingString)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
            }
            Spacer()
            HStack {
                Spacer()
                Button("Product Factory 1", action: {
                    self.getClientDetail(factory: ConcreteFactory1())
                    self.currentProductFactory = 1
                })
                Spacer()
                Button("Product Factory 2", action: {
                    self.getClientDetail(factory: ConcreteFactory2())
                    self.currentProductFactory = 2
                })
                Spacer()
            }
            Spacer()
        }
        .onAppear(perform: {
            self.getClientDetail(factory: ConcreteFactory1())
            self.currentProductFactory = 1
        })
    }

    func getClientDetail(factory: AbstractFactory) {
        let temp = Client.someClientCode(factory: factory)
        self.productAString = temp.result1
        self.productBString = temp.result2
        self.productBCollaboratingString = temp.result3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
