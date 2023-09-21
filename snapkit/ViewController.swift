//
//  ViewController.swift
//  snapkit
//
//  Created by Павел Петров on 08.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
        
        let label = UILabel()
        label.text = "Welcome, 🤡!"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(150)
        }
        
        let extraLabel = UILabel()
        let text = "***RANDOM TEST TEXT***\n\nGentleman direct lively landlord.\n\nFar either upon consider passed. Warrant remainder resolved become. Described started suppose of knew raillery. While gone thing unsatiable year entire sake upon effect settle. Effects opinions extended.\n\nIs wish within and led certainly waited feeling insensible allowance points present. Admitting smart cottage beauty hastened delivered. Wandered performed natural mean size however twenty ample going wrote so delighted cheerful. Denoting norland civilly must sake tedious. Gave direction offices window suffering led shade folly calling entire meant party.\n\nLain depart your spot ever behind. Our favour really lose instrument visited dare post is nothing occasion dependent offered solicitude doubtful such song. Respect none just great denied desirous extended friendly not wicket moonlight distant literature perfectly than questions. Real name delight hill own. Mutual temper song admitted by edward dejection been existence decay certainly declared.\n\nFather blessing know gravity why sold fact mistress themselves assurance dine. Expense shewing northward mean wondered ourselves these related face call highly concealed returned sold have. Mile uneasy carried small small dearest cannot behaved invited."
        extraLabel.numberOfLines = 0
        extraLabel.font = UIFont.systemFont(ofSize: 13)
        extraLabel.text = text
        view.addSubview(extraLabel)
        extraLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(50)
            make.top.equalTo(label).inset(50)
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red:  84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitle("Get you username ->", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().inset(50)
            make.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        print("We want to get username")
    }


}

