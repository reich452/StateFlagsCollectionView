//
//  StateController.swift
//  CollectionViews
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Spencer Curtis. All rights reserved.
// 

import Foundation

class StateController {
    
    // Shared Controller 
    static let sharedController = StateController()
    
    // States Array 
    var states: [State] = []
    
    // Initializer - calls the function
    
    init() {
     self.states = createAllStates()
    }
    
    
    // Add a createAllStates() -> [State]
    
    func createAllStates() -> [State] {
        // self.states = array same as in the initializer self.states = createAllStates()
        
        var placeHolderStates: [State] = []
        
        for stateFullName in StateHelper.fullNames {
            guard let index = StateHelper.fullNames.index(of: stateFullName) else { return [] }
            let abbreviation = StateHelper.abbreviations[index];
            let state = State(name: stateFullName, abbreviation: abbreviation)
            placeHolderStates.append(state)
        }
        return placeHolderStates
    }
}
