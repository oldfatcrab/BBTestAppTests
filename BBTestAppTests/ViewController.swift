//
//  ViewController.swift
//  BBTestAppTests
//
//  Created by Chris Stott on 2016-11-20.
//  Copyright © 2016 Chris Stott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonClick(_ sender: Any) {
        self.textField.text = 99
    }

    @IBOutlet weak var textField: UITextField!

}

