//
//  ViewController.swift
//  ViewOutletActionsDemo
//
//  Created by David Mills on 2017-08-15.
//  Copyright © 2017 David Mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameLabel.text = "Hello Class!"
        nameLabel.textAlignment = .center
        
        
        progressView.progress = 0.75
        
        imageView.image = #imageLiteral(resourceName: "mal")
//        imageView.image = UIImage(named: "mal")!
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let images = [#imageLiteral(resourceName: "mal"), #imageLiteral(resourceName: "leela"), #imageLiteral(resourceName: "jack")]
        let index = arc4random_uniform(UInt32(images.count))
        
        let image = images[Int(index)];
        imageView.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

