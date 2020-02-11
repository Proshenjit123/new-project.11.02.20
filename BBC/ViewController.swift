//
//  ViewController.swift
//  BBC
//
//  Created by Proshenjit kumar on 11/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myNews: UIButton!
    
    @IBOutlet weak var AllNews: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNews.layer.cornerRadius = 8
        AllNews.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    @IBAction func myNewsShow(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ShowTableVc")as! ShowTableVc
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func AllNewsShow(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "AllNews")as!AllNews
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

