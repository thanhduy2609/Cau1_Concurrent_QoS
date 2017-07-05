//
//  ViewController.swift
//  Cau1_Concurrent
//
//  Created by Cntt03 on 7/5/17.
//  Copyright © 2017 Cntt03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //func1()
        func2()
    }
    
    func func2() {
        let queue = DispatchQueue(label: "queue", qos: .userInitiated, attributes: .concurrent)
        
        queue.async {
            for i in 0...9 {
                print("🔴", i)
            }
        }
        
        queue.async {
            for i in 100...109 {
                print("🔵", i)
            }
        }
        
    
        
        queue.async {
            for i in 1000...1009 {
                print("⚫️", i)
            }
        }
        
    }
    
    func func1(){
        let queue1 = DispatchQueue(label: "queueRed", qos: DispatchQoS.userInitiated)
        let queue2 = DispatchQueue(label: "queueBlue", qos: DispatchQoS.userInitiated)
        let queue3 = DispatchQueue(label: "queueBlack", qos: DispatchQoS.userInitiated)
        
        queue1.async {
            for i in 0...9 {
                print("🔴", i)
            }
        }
        
        queue2.async {
            for i in 100...109 {
                print("🔵", i)
            }
        }
        
        queue3.async {
            for i in 1000...1009 {
               print("⚫️", i)
            }
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

