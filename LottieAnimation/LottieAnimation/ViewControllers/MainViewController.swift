//
//  ViewController.swift
//  LottieAnimation
//
//  Created by shm on 2021/08/09.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "71613-sprinkles")
        animView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Main"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        
        view.addSubview(animationView)
        animationView.center = view.center
        
        // animationView 실행
        animationView.play{ (finish) in // closure
            print("finish")
            // animationView가 끝난 이후
            self.animationView.removeFromSuperview()
            self.view.backgroundColor = .white
            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

