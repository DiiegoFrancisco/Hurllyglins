//
//  ViewController.swift
//  Hurllyglins
//
//  Created by DevMakerMobile on 16/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var roupas: [Roupa] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var  roupa: Roupa
        roupa = Roupa(title: "Roupa ", descrition: "Camisa", image: UIImage (named: "Masculina 1")!)
        roupas.append(roupa)
        roupa = Roupa(title: "Roupa ", descrition: "Camisa", image: UIImage(named: "Masculina 2")!)
        roupas.append(roupa)
        roupa = Roupa(title: "Roupa ", descrition: "Camisa", image: UIImage (named: "Masculina 3")!)
        roupas.append(roupa)
        roupa = Roupa(title: "Roupa ", descrition: "Camisa F", image: UIImage(named: "Feminina 1")!)
        roupas.append(roupa)
        roupa = Roupa(title: "Roupa ", descrition: "Camisa F", image: UIImage (named: "Feminina 2")!)
        roupas.append(roupa)
        roupa = Roupa(title: "Roupa ", descrition: "Camisa F", image: UIImage(named: "Feminina 3")!)
        roupas.append(roupa)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roupas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let roupa = roupas[indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! RoupaCelula
        celula.imageRoupa.image = roupa.image
        celula.lbTitle.text = roupa.title
        celula.lbDescrition.text = roupa.descrition
        
        
        //celula.imageRoupa.layer.cornerRadius = 42
       // celula.imageRoupa.clipsToBounds = true
     
        
        //celula.textLabel?.text = roupa.title
       //celula.imageView?.image = roupa.image
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "seguedetalhes"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let roupaSelecionada = self.roupas[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesRoupa
                viewControllerDestino.roupa = roupaSelecionada
            }
            
        }
    }


}

