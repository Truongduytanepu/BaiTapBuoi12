//
//  ViewController.swift
//  BaiTapBuoi12
//
//  Created by Trương Duy Tân on 24/05/2023.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var viewPerson: UIView!
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var viewBottom: UIView!
    @IBOutlet weak var viewMid: UIView!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var job: UILabel!
    
    @IBOutlet weak var imgPerson: UIImageView!
    
    @IBOutlet weak var lblPerson: UILabel!
    
    @IBOutlet weak var morePerson: UIImageView!
    
    @IBOutlet weak var imgSetting: UIImageView!
    
    @IBOutlet weak var lblSetting: UILabel!
    
    
    @IBOutlet weak var imgEStatement: UIImageView!
    
    @IBOutlet weak var lblEStatement: UILabel!
    
    
    @IBOutlet weak var imgCode: UIView!
    
    @IBOutlet weak var lblCode: UILabel!
    
    @IBOutlet weak var imgFAQS: UIImageView!
    
    @IBOutlet weak var lblFAQS: UILabel!
    
    
    @IBOutlet weak var imgHandbook: UIImageView!
    
    @IBOutlet weak var lblHandbook: UILabel!
    
    @IBOutlet weak var imgCommunity: UIImageView!
    
    @IBOutlet weak var lblCommunity: UILabel!
    
    @IBOutlet weak var imgHeadPhone: UIImageView!
    
    @IBOutlet weak var lblHeadphone: UILabel!
    
    @IBOutlet weak var viewHeadphone: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        setupFrame()
        // Tạo một UITapGestureRecognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToProfile(_sender: )))
        // Đặt số lần chạm cần nhận dạng (ví dụ: 1)
        tapGesture.numberOfTapsRequired = 1
        
        // Thêm UITapGestureRecognizer vào UIStackView
        viewPerson.addGestureRecognizer(tapGesture)
//        view.isUserInteractionEnabled = true
    }
    @objc func goToProfile(_sender: UITapGestureRecognizer){
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let personVC = mainStoryboard.instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        personVC.modalPresentationStyle = .popover
        self.present(personVC, animated: true)
    }
    
    func setupUI(){
        view.backgroundColor = .gray
        viewTop.backgroundColor = .white
        viewMid.backgroundColor = .white
        viewBottom.backgroundColor = .white
        avatar.layer.cornerRadius = 6
        name.text = "Trương Duy Tân"
        job.text = "DEV IOS"
        
        imgPerson.tintColor = UIColor.black
        lblPerson.text = "Person Data"
        
        
        imgSetting.tintColor = UIColor.black
        lblSetting.text = "Setting"
        
        imgEStatement.tintColor = UIColor.black
        lblEStatement.text = "E-Statement"
        
        imgCode.tintColor = UIColor.black
        lblCode.text = "Refferal Code"
        
        imgFAQS.tintColor = UIColor.black
        lblFAQS.text = "FAQS"
        
        imgHandbook.tintColor = UIColor.black
        lblHandbook.text = "Our Handbook"
        
        imgCommunity.tintColor = UIColor.black
        lblCommunity.text = "Community"
        
        
        
        let colorHeadphone = UIColor(red: 0.459, green: 0.51, blue: 0.831, alpha: 1)
        imgHeadPhone.tintColor = colorHeadphone
        lblHeadphone.text = "Fell Free to Ask, We Ready to Help"
        lblHeadphone.textColor = colorHeadphone
        let paleGray = UIColor(red: 0.929, green: 0.937, blue: 0.992, alpha: 1)
        viewHeadphone.backgroundColor = paleGray
        viewHeadphone.layer.cornerRadius = 10
        
    }
    
    func setupFrame(){
        avatar.frame.origin.x = viewTop.frame.origin.x + 50
        avatar.frame.origin.y = viewTop.frame.origin.y + 90
        
    }
}

