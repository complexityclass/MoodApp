//
//  SegueHandlerType.swift
//  MoodApp
//
//  Created by Valeriy Popov on 04/10/2016.
//  Copyright © 2016 Valeriy Popov. All rights reserved.
//

import UIKit

protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier,
              let segueIdentifier =  SegueIdentifier(rawValue: identifier) else {
                fatalError("Unknown segue \(segue)")
        }
        return segueIdentifier
    }
    
    func performSegue(segueIdentifier: SegueIdentifier) {
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: nil)
    }
}
