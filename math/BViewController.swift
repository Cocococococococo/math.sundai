//
//  2BViewController.swift
//  math
//
//  Created by 中川誇子 on 2017/01/08.
//  Copyright © 2017年 中川誇子. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var imageView : UIImageView!
    
    var questionArray : [String] = ["B1","B2","B3"]
    var answerArray : [String] = ["答B1","答B2","答B3"]
    
    var index: Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(){
        self.reload()
    }
    
    func reload(){
        
        var randomNum:Int = Int(arc4random_uniform(4))
        
        let questionImage:UIImage = UIImage(named:questionArray[randomNum])!
        let answerImage:UIImage = UIImage(named:answerArray[randomNum])!
        
        imageView.image = questionImage
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            
            self.imageView.image = answerImage
        }
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
