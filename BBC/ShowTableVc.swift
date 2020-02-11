//
//  ShowTableVc.swift
//  BBC
//
//  Created by Proshenjit kumar on 11/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit
import  AlamofireImage

class ShowTableVc: UIViewController {
    
var modelData = [Model]()

var titleName = [String]()
var imageName = [String]()
    

    @IBOutlet weak var newsTabel: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        newsTabel.dataSource = self
        newsTabel.delegate = self
        

       
    }
    
    func loadData() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil {
                do{
                    let myData = try! JSONDecoder().decode([Model].self, from: data!)
                    DispatchQueue.main.async {
                        for n in myData{
                            self.titleName.append(n.title)
                            self.imageName.append(n.url)
                            //print(self.imageName)
                        }
                        self.newsTabel.reloadData()
                    }
                }catch{
                    print(":( Nothing Found")
                }
            }
        }.resume()
        
    }
    

        
    }
    
        
    

extension ShowTableVc:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 410
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageName.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = newsTabel.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        if let imgUrl = imageName[indexPath.row] as? String {
            if let url = URL(string: imgUrl){
                cell.imageShow.af_setImage(withURL: url)
            }
        }
        
        cell.LabelShow.text = titleName[indexPath.row]
        return cell

    }
    
    
    
    
    
    

   
}
