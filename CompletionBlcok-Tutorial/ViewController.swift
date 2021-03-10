//
//  ViewController.swift
//  CompletionBlcok-Tutorial
//
//  Created by 김송현 on 2021/03/09.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet var mainTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("VieController - viewDidLoad() 호출됨")
        KRProgressHUD.show()
        sayHi(completion: {result in
            print(result)
            KRProgressHUD.showSuccess()
            self.mainTitle.text = result
            
        })
    }

    fileprivate func sayHi(completion: @escaping(String) -> ()){
        print("ViewController - sayHi()호출됨")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
           // Code you want to be delayed
            print("하이")
            completion("하이끝")
        }
    }
}

