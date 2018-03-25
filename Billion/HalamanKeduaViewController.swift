//
//  HalamanKeduaViewController.swift
//  Billion
//
//  Created by Nakama on 23/03/18.
//  Copyright © 2018 Nakama. All rights reserved.
//

import UIKit

protocol TextEditdDelegate: class {
    func didEditText(info: String)
}

class HalamanKeduaViewController: UIViewController {
    
    weak var delegate: TextEditdDelegate? = nil
    
    var hasil: String? = ""
    @IBOutlet weak var textKe2: UITextField!
    @IBOutlet weak var labelDua: UILabel!
    
    @IBAction func submitBack(_ sender: Any) {
        labelDua.text = textKe2.text
        delegate?.didEditText(info:textKe2.text!)
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDua.text = hasil
        //self.navigationItem.hidesBackButton = true
        //let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(HalamanKeduaViewController.back(sender:)))
        //self.navigationItem.leftBarButtonItem = newBackButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func back(sender: UIBarButtonItem) {
       delegate?.didEditText(info:textKe2.text!)
        _ = self.navigationController?.popViewController(animated: true)
    }


}
