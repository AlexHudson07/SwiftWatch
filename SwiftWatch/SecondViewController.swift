//
//  SecondViewController.swift
//  SwiftWatch
//
//  Created by Alex Hudson on 2/10/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let model = Model(name: "hudson")


    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

      NSLog(model.phrase())

    }

    override func viewWillAppear(animated: Bool) {

        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func onButtonPressed(sender: AnyObject) {

        NSLog(textField.text)

        model.myName = textField.text
    }

}
