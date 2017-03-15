//
//  StateCollectionViewCell.swift
//  CollectionViews
//
//  Created by Nick Reichard on 3/15/17.
//  Copyright © 2017 Spencer Curtis. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stateImageView: UIImageView!
    @IBOutlet weak var stateLabel: UILabel!
    
    var state: State? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let state = state else { return }
        stateImageView.image = UIImage(named: state.abbreviation)
        stateLabel.text = state.name
    }
    
}
