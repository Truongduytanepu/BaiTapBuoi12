//
//  ProfileViewController.swift
//  BaiTapBuoi12
//
//  Created by Trương Duy Tân on 26/05/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgAvatar: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgAvatar.layer.cornerRadius = imgAvatar.frame.origin.x / 2
       
    }
    

   
}
