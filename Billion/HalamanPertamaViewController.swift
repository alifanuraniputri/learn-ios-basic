//
//  HalamanPertamaViewController.swift
//  Billion
//
//  Created by Nakama on 23/03/18.
//  Copyright © 2018 Nakama. All rights reserved.
//

import UIKit

class HalamanPertamaViewController: UIViewController, TextEditdDelegate {
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func didSelectSubmit(_ sender: UIButton) {
        label.text = textfield.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didEditText(info: String) {
        label.text = info
    }

//     MARK: - Navigation
//
//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        if segue.identifier == "halamanKeduaSegue" {
            if let halamanKeduaViewController = segue.destination as? HalamanKeduaViewController {
                halamanKeduaViewController.hasil = textfield.text
                halamanKeduaViewController.delegate = self
            }
        }
    }
 

}
