//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Jamilton  Damasceno
//  Copyright © Curso IOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remover(indice: Int) {
        
        /*Recuperar tarefas já salvas*/
        tarefas = listar()
        
        tarefas.remove(at: indice )
        UserDefaults.standard.set( tarefas , forKey: chave)
        
    }
    
    func salvar(tarefa: String){
        
        /*Recuperar tarefas já salvas*/
        tarefas = listar()
        
        /*Salvar tarefa*/
        tarefas.append( tarefa )
        UserDefaults.standard.set( tarefas , forKey: chave)
        
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else {
            return []
        }
        
    }
    
    
}
