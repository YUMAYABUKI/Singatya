//
//  ViewController.swift
//  シンガチャ
//
//  Created by 矢吹祐真 on 2015/06/17.
//  Copyright (c) 2015年 矢吹祐真. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{

    var number:Int!
    var myAudioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getNumber(){
        number = Int(arc4random_uniform(3))
        NSLog("%d", number)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var resultViewController = segue.destinationViewController as!
        ResultViewController
        resultViewController.number = self.number
    }


}

