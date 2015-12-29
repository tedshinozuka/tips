//
//  SettingsViewController.swift
//  tips
//
//  Created by Ted Shinozuka on 12/28/15.
//  Copyright © 2015 Ted Shinozuka. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    //@IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultTipControl.selectedSegmentIndex = defaults.integerForKey("tipIndexKey")
        //defaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipIndex = defaultTipControl.selectedSegmentIndex
        defaults.setInteger(tipIndex, forKey: "tipIndexKey")
    }
    
    /*
    func getTipIndex() -> Int {
        return defaults.integerForKey("tipIndexKey")
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let destinationVC = segue.destinationViewController
        // Pass the selected object to the new view controller.
    }
    */
    

}
