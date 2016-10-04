//
//  ViewController.swift
//  MoodApp
//
//  Created by Valeriy Popov on 04/10/2016.
//  Copyright © 2016 Valeriy Popov. All rights reserved.
//

import UIKit
import CoreData

class RootViewController: UIViewController, ManagedObjectContextSettable {
    
    enum SegueIdentifier: String {
        case embedNavigation = "embedNavigationController"
    }
    
    var managedObjectContext: NSManagedObjectContext!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        
        performSegue(withIdentifier: "MoodListSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "MoodListSegue":
            
            guard let navigationController = segue.destination as? UINavigationController,
                var viewController = navigationController.viewControllers.first as? ManagedObjectContextSettable
            else {
                fatalError("wrong controller type")
            }
            
            viewController.managedObjectContext = managedObjectContext
        default: break
        }
    }
}
