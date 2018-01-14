//
//  ShowRoboImageViewController.swift
//  AppBundleReader
//
//  Created by Kaichi Momose on 2018/01/13.
//  Copyright © 2018 Eliel Gordon. All rights reserved.
//

import UIKit
import WebKit

class ShowRoboImageViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var parsonalityLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var robotImage: WKWebView!
    var robot: Robot? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        robotImage.layer.borderColor = UIColor.black.cgColor
        robotImage.layer.borderWidth = 2
        nameLabel.text = robot?.name
        parsonalityLabel.text = robot?.personality
        commentLabel.text = robot?.phrase
        let request = URLRequest(url: (robot!.image))
        robotImage.load(request)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
