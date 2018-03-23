//
//  HalamanKeduaViewController.swift
//  Billion
//
//  Created by Nakama on 23/03/18.
//  Copyright © 2018 Nakama. All rights reserved.
//

import UIKit

class HalamanKeduaViewController: UIViewController {

    @IBOutlet weak var labelDua: UILabel!
    
    var hasil: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
         labelDua.text = hasil

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
