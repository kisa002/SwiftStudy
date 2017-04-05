//
//  ViewController.swift
//  LoginStudy
//
//  Created by HAEYUM on 05/04/2017.
//  Copyright © 2017 Holy-Knight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var username = "admin"
    var password = "kisa002"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnLogin(_ sender: UIButton) {
        if(txtUsername.text == username)
        {
            if(txtPassword.text == password)
            {
                lblResult.text = txtUsername.text! + "님 반갑습니다!"
            }
            else
            {
                lblResult.text = "비밀번호가 올바르지 않습니다."
            }
        }
        else
        {
            lblResult.text = "사용자 이름이 올바르지 않습니다."
        }
    }
}

