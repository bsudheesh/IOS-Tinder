//
//  CardsViewController.swift
//  Tinder
//
//  Created by Sudheesh Bhattarai on 4/6/17.
//  Copyright © 2017 Sudheesh Bhattarai. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    var cardInitialCenter: CGPoint!
    
    @IBOutlet var gestureRecognizer: AnyObject!
    @IBOutlet weak var userImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didPan(sender:)))
        // Here we use the method didPan(sender:), which we defined in the previous step, as the action.
        
        
        // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
        userImageView.isUserInteractionEnabled = true
        userImageView.addGestureRecognizer(panGestureRecognizer)
        cardInitialCenter = userImageView.center

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didPan(sender: UIPanGestureRecognizer) {
        var translation = sender.translation(in: view)

        
        if sender.state == .began {
            print("Gesture began")
        } else if sender.state == .changed {
            userImageView.center.x = cardInitialCenter.x + translation.x
            userImageView.center.y = cardInitialCenter.y + translation.y
            
      
            
            
            
            print("Gesture is changing")
        } else if sender.state == .ended {
            
            
            
            
            
            print("Gesture ended")
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
