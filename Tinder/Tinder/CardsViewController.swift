//
//  CardsViewController.swift
//  Tinder
//
//  Created by Veronika Kotckovich on 3/24/16.
//  Copyright © 2016 Veronika Kotckovich. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var ryan: UIImageView!
    let panRec = UIPanGestureRecognizer()
     var initialcenter: CGPoint?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panRec.translationInView(ryan)
        initialcenter = ryan.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func onDrag(sender: AnyObject) {
        let translation = sender.translationInView(view)
        //let point = sender.locationInView(self.view)
        
        //rec.setTranslation(translation, inView: centerImage)
        ryan.center = CGPointMake((initialcenter?.x)! + translation.x , (initialcenter?.y)!)
        print("dragging")
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
