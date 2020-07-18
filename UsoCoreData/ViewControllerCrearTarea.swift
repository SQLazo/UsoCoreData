//
//  ViewControllerCrearTarea.swift
//  UsoCoreData
//
//  Created by Emerson on 6/7/20.
//  Copyright © 2020 Emerson. All rights reserved.
//

import UIKit

class ViewControllerCrearTarea: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtProP: UITextField!
    @IBOutlet weak var txtExamF: UITextField!
    @IBOutlet weak var txtProL: UITextField!
    
    @IBAction func agregar(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let cursos = Curso(context: context)
        cursos.nombre = txtNombre.text!
        cursos.proPrac = Double(txtProP.text!)!
        cursos.proLab = Double(txtProL.text!)!
        cursos.examFin = Double(txtExamF.text!)!
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
