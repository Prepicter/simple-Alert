//
//  ViewController.swift
//  Simple Alert
//
//  Created by dit03 on 2019. 4. 10..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alertController = UIAlertController(title: "Hey Park", message: "Hello?", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction) -> Void in
            self.Label.text = "Hello Park"
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func btnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "카메라", message: "Take a Picture!", preferredStyle: .actionSheet)
        
        let camAction = UIAlertAction(title: "Camera", style: .default, handler: nil)
        let libAction = UIAlertAction(title: "Libary", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        //        let delAction = UIAlertAction(title: "Delete", style: .destructive, handler: {
        //            (action: UIAlertAction) -> Void in
        //            self.view.backgroundColor = UIColor.blue
        //        })
        
        // 후행 클로저
        let delAction = UIAlertAction(title: "Delete", style: .destructive){
            (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.blue
        }

        alertController.addAction(camAction)
        alertController.addAction(libAction)
        alertController.addAction(cancelAction)
        alertController.addAction(delAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

