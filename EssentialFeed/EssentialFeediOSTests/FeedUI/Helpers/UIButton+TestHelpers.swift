//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Victor Lee on 23/10/25.
//
import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
