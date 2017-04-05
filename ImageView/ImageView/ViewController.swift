//
//  ViewController.swift
//  ImageView
//
//  Created by HAEYUM on 05/04/2017.
//  Copyright © 2017 Holy-Knight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgOn = UIImage(named: "Skrillex_Background_Test.png")
        imgOff = UIImage(named: "Deep_House.png")
        
        imgView = imgOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnResizeImage(_ sender: UIButton){
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom)
        {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight
            )
        }
        else
        {
            
        }
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
    }
    
}

