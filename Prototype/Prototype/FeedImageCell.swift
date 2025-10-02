//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Victor Lee on 2/10/25.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var locationContainer: UIView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
}

extension FeedImageCell {
    func configure(with model: FeedImageViewModel) {
        locationLabel.text = model.location
        locationContainer.isHidden = model.location == nil
        
        feedImageView.image = UIImage(named: model.imageName)
        
        descriptionLabel.text = model.description
        descriptionLabel.isHidden = model.description == nil
    }
}
