//
//  SecondViewController.swift
//  Assigment2
//
//  Created by 曾意晴 on 2021/5/6.
//

import UIKit

class SecondViewController: UIViewController {
    
   
    @IBOutlet weak var InfoImage: UIImageView!
    @IBOutlet weak var infoname: UILabel!
    @IBOutlet weak var infolocation: UILabel!
    @IBOutlet weak var infoiata: UILabel!
    @IBOutlet weak var infoshortname: UILabel!
    
    
    var airport: Airport?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = airport?.IATA
        
        InfoImage.image = UIImage(named: (airport?.imageName)!)
        infoname.text = airport?.name
        infolocation.text = airport?.country
        infoiata.text = airport?.IATA
        infoshortname.text = airport?.shortName

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
