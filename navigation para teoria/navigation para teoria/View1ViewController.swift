//
//  ViewController.swift
//  navigation para teoria
//
//  Created by danielapps on 10/08/21.
//

import UIKit

class View1ViewController: UIViewController {

    @IBOutlet weak var controllerTitle: UILabel!
    @IBOutlet weak var goToNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        controllerTitle.text = "My Controller title"
        print("button width - viewDidLoad:\(goToNextButton.frame.width)")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear()")
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewDidDisappear()")
    }
    
    deinit {
        print("de-init:\(type(of: self).description())")
    }
    
    @IBAction func didTapGoToNextView(_ sender: UIButton) {
        let nextVC = storyboard?.instantiateViewController(identifier: "View2")
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //cambiamos el color del Label para demostrar que los cambios se logran ver en pantalla
        controllerTitle.backgroundColor = .blue
    }
    @IBAction func didTapPresentAView(_ sender: UIButton) {
        let presentVC = storyboard?.instantiateViewController(identifier: "ViewPresentedViewController")
        self.navigationController?.present(presentVC!, animated: true, completion: nil)
    }
    
        
}

