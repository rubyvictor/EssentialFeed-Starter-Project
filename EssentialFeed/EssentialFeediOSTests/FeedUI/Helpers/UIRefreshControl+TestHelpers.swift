//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Victor Lee on 23/10/25.
//
import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
