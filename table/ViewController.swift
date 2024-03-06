//
//  ViewController.swift
//  table
//
//  Created by Tekup-mac-1 on 6/2/2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource ,UITableViewDelegate{
 
    
   
    @IBOutlet weak var tab: UITableView!
   
    
    struct Names {
        let title: String
        let image: String
    }

    let data : [Names] = [
       Names(title: "Star Wars", image: "stars"),
       Names(title: "Lucifer", image: "luci"),
       Names(title: "Game Of Thrones", image: "got"),
       Names(title: "Vikings", image: "vik"),
       Names(title: "The 100", image: "the100")
       
    ]
    
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "thecell", for: indexPath) as! CustomCellTableView
        cell.iconimage.image = UIImage(named: name.image)
        cell.label.text = name.title
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedName = data[indexPath.row].title
        let selectedImage = data[indexPath.row].image
               print("Selected label: \(selectedName)")
        
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            vc.selectedImage = selectedImage
            vc.selectedName = selectedName
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }


}

