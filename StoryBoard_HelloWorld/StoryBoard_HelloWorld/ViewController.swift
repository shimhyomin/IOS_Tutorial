//
//  ViewController.swift
//  StoryBoard_HelloWorld
//
//  Created by shm on 2021/08/08.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Hello World"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // view의 backgroundcolor를 red로 설정
        view.backgroundColor = .red
        
        // titleLabel 생성
        view.addSubview(titleLabel)
        // titleLabel 정중앙으로 위치
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

