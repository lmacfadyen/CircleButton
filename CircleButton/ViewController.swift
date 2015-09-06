//
//  ViewController.swift
//  CircleButton
//
//  Created by Lawrence F MacFadyen on 2015-09-02.
//  Copyright © 2015 LawrenceM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        let alert = UIAlertController(title: "Circular Button", message: "You clicked the button.", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureButton()
    {
        
        addButton.layer.cornerRadius = 0.5 * addButton.bounds.size.width
        addButton.layer.borderColor = UIColor(red:0.0/255.0, green:122.0/255.0, blue:255.0/255.0, alpha:1).CGColor as CGColorRef
        addButton.layer.borderWidth = 2.0
        addButton.clipsToBounds = true
        
        
    }
    
    override func viewDidLayoutSubviews() {
        configureButton()
    }

}

