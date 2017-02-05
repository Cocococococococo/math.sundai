//
//  1AViewController.swift
//  math
//
//  Created by 中川誇子 on 2017/01/08.
//  Copyright © 2017年 中川誇子. All rights reserved.
////////////

import UIKit

class AViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var imageView : UIImageView!
    
    var questionArray : [String] = ["A1","A2","A3","A4"]
    var answerArray : [String] = ["答A1","答A2","答A3","答A4"]
    
    var index: Int = 0
    
    var index2:Int!
    
    var correctanswer:Int = 0
    
    var seitouritu:Int = 0
    
    var counts:[Int] = [1,1,1,1]
    
   // var counts:[Int] = []
    
    
    let saveData: UserDefaults = UserDefaults.standard
    
    let defaults = UserDefaults.standard
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reload()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toAnswer"{
            let secondViewContoroller:A2ViewController = segue.destination as! A2ViewController
            
            secondViewContoroller.correct = self.correctanswer
        }
        
    }
    
    @IBAction func maru(){
        
        if questionArray.count == 0{
            performSegue(withIdentifier: "toAnswer", sender: nil)
        }else{
            
            correctanswer+=1
            self.reload()
        }
    }
    
    @IBAction func batu(){
        
        if questionArray.count == 0{
            performSegue(withIdentifier: "toAnswer", sender: nil)
            //label.text = String(correctanswer)
        }else{
            
            
            self.reload()
        }
        
        
    }
    
    
    func reload(){
        let num = answerArray.count - 1
        var randomNum:Int = Int(arc4random_uniform(UInt32(num)))
        index2 = randomNum
        
        let questionImage:UIImage = UIImage(named:questionArray[randomNum])!
        let answerImage:UIImage = UIImage(named:answerArray[randomNum])!
        
        imageView.image = questionImage
        
        questionArray.remove(at: randomNum)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            
            self.imageView.image = answerImage
            
            self.answerArray.remove(at: randomNum)
            
        }
    }
    
}
