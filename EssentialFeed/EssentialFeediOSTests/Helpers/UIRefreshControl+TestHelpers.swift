//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Victor Lee on 23/10/25.
//
import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach { (target as NSObject).perform(Selector($0))
            }
        }
    }
}
