//
//  ViewController.swift
//  SwiftWatch
//
//  Created by Alex Hudson on 2/10/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model(name: "test")

    let model2 = Model(name: "alex")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        NSLog(model.phrase())

        if (model !== model2)
        {
            NSLog("model and model2 dont refer to the same model instance")
        }
    }

    override func viewWillAppear(animated: Bool) {

        self.navigationController?.setNavigationBarHidden(true , animated: false)
    }

    @IBAction func onButtonPressed(sender: AnyObject) {

        NSLog("button pressed")

        self.performSegueWithIdentifier("mySegue", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
}

