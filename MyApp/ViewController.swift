//
//  ViewController.swift
//  MyApp
//
//  Created by Shiva Narrthine on 6/6/14.
//  Copyright (c) 2014 Shiva Narrthine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toDoItem: ToDoItem
    
    init(coder aDecoder: NSCoder!)
    {
        self.toDoItem = ToDoItem(name: String())
        super.init(coder: aDecoder)
    }
    
    
    
    @IBOutlet var textfield : UITextField
    @IBOutlet var doneButton : UIBarButtonItem
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if sender as? NSObject != self.doneButton{
            return
        }
        if self.textfield.text.utf16count > 0{
            self.toDoItem = ToDoItem(name: self.textfield.text)
        }
        
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }


}

