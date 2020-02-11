//
//  AllNews.swift
//  BBC
//
//  Created by Proshenjit kumar on 11/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit


class AllNews: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func BBC(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "NewsViewController") as! NewsViewController
        vc.btnNO = 1
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func CNN(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "NewsViewController") as! NewsViewController
             vc.btnNO = 2
             self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Aljazeera(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "NewsViewController") as! NewsViewController
             vc.btnNO = 3
             self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
}
