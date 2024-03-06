//
//  SecondViewController.swift
//  table
//
//  Created by Tekup-mac-1 on 6/2/2024.
//

import UIKit

class SecondViewController: UIViewController {

  
    @IBOutlet weak var theimage: UIImageView!
    
    @IBOutlet weak var thelabel: UILabel!
    var selectedName: String?
       var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        theimage.image = UIImage(named: selectedImage!)
        thelabel.text = selectedName
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

}
