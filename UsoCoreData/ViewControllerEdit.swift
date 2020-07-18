//
//  ViewControllerEdit.swift
//  UsoCoreData
//
//  Created by Emerson on 6/7/20.
//  Copyright © 2020 Emerson. All rights reserved.
//

import UIKit

class ViewControllerEdit: UIViewController {

    var curso = Curso()

    
    @IBOutlet weak var tareaLabel: UILabel!
    @IBAction func completarTarea(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(curso)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            tareaLabel.text = "😇\(curso.nombre!)"
    }
        
}
