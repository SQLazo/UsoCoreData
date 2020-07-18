//
//  ViewControllerTareaCompletada.swift
//  UsoCoreData
//
//  Created by Emerson on 6/7/20.
//  Copyright © 2020 Emerson. All rights reserved.
//

import UIKit

class ViewControllerTareaCompletada: UIViewController {
    
    var curso:Curso? = nil
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtPP: UITextField!
    @IBOutlet weak var txtPL: UITextField!
    @IBOutlet weak var txtEF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtNombre.text = "\(curso!.nombre!)"
        txtPP.text = "\(curso!.proPrac)"
        txtPL.text = "\(curso!.proLab)"
        txtEF.text = "\(curso!.examFin)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
