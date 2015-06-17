//
//  ResultViewController.swift
//  シンガチャ
//
//  Created by 矢吹祐真 on 2015/06/17.
//  Copyright (c) 2015年 矢吹祐真. All rights reserved.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController,AVAudioPlayerDelegate {
    
    var number:Int!
    var audio:AVPlayer!
    
    @IBOutlet var image:UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("人狼", ofType: "mp3")!)
        audio = AVPlayer(URL: audioPath)
        audio.play()
        
        // Do any additional setup after loading the view.
        
        
        if number == 2{
            image.image = UIImage(named: "joe.png")
    
        } else if number == 1{
            image.image = UIImage(named: "kazu.png")
    
        }else{
            image.image = UIImage(named: "shinokin.png")
    
        }
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
