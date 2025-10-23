//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Victor Lee on 23/10/25.
//
import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach { (target as NSObject).perform(Selector($0))
            }
        }
    }
}
