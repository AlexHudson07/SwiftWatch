//
//  InterfaceController.swift
//  SwiftWatch WatchKit Extension
//
//  Created by Alex Hudson on 2/10/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var clickButton: WKInterfaceButton!
    @IBOutlet weak var label: WKInterfaceLabel!
    @IBOutlet weak var theSwitch: WKInterfaceSwitch!
    @IBOutlet weak var theSlider: WKInterfaceSlider!

    let model = Model(name: "alex")

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onClickButtonPressed() {

        var phrase = model.phrase()

        label.setText(phrase)

        clickButton.setBackgroundColor(UIColor.blueColor())
        clickButton.setTitle("clicked")

        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("reset"), userInfo: nil, repeats: false)

        theSwitch.setOn(true)

        theSlider.setColor(UIColor.yellowColor())

        theSlider.setNumberOfSteps(5)
    }

    func reset() {
        clickButton.setTitle("click")
        clickButton.setBackgroundColor(UIColor.darkGrayColor())
        label.setText("default text")

    }
    @IBAction func onSwitchSwiped(value: Bool) {

        theSlider.setColor(UIColor.blueColor())

        if value == true {

            label.setText("true")
        }
        else {
            label.setText("false")
        }

        theSlider.setNumberOfSteps(3)
    }

    @IBAction func onSliderSwiped(value: Float) {

        //This is giving me an an exeption       // var myValue = String(format:"%value is %f", value)

        label.setText("5")
    }

}
