//
//  StatesUICollectionViewController.swift
//  CollectionViews
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Spencer Curtis. All rights reserved.
//

import UIKit

private let reuseIdentifier = "stateCell"

class StatesUICollectionViewController: UICollectionViewController {
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return StateController.sharedController.states.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? StateCollectionViewCell else { return UICollectionViewCell ()}
        
        let state = StateController.sharedController.states[indexPath.row]
        
        cell.state = state
    
        return cell
    }
    
    
}
