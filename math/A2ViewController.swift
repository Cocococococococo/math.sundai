//
//  A2ViewController.swift
//  math
//
//  Created by 中川誇子 on 2017/01/22.
//  Copyright © 2017年 中川誇子. All rights reserved.
//

import UIKit

class A2ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!
    
    var correct:Int=0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String(correct)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
