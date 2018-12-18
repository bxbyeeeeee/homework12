//
//  ViewController.swift
//  bxbCoreData
//
//  Created by student on 2018/12/18.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfStuID: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(NSHomeDirectory())
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func add(_ sender: Any) {
        let person = Person(context: context)
        person.name = tfName.text
        person.stuid = tfStuID.text
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
//    @IBAction func update(_ sender: Any) {
//        let  fetch:NSFetchRequest<Person> = Person.fetchRequest()
//        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
//        let persons = try? context.fetch(fetch)
//        if let p = persons?.first {
//            p.stuid = tfStuID.text
//        }
//    }
//
//    @IBAction func del(_ sender: Any) {
//        let  fetch:NSFetchRequest<Person> = Person.fetchRequest()
//        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
//        let persons = try? context.fetch(fetch)
//        if let p = persons?.first {
//            context.delete(p)
//        }
//    }
//    @IBAction func query(_ sender: Any) {
//        let  fetch:NSFetchRequest<Person> = Person.fetchRequest()
//        fetch.predicate = NSPredicate(format: "name=%@", tfName.text!)
//        let persons = try? context.fetch(fetch)
//        if let p = persons?.first {
//            tfStuID.text = p.stuid
//        }
//    }
    
}

