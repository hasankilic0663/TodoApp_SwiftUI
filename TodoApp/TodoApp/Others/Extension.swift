//
//  Extension.swift
//  TodoApp
//
//  Created by Hasan on 21.06.2024.
//

import Foundation

extension Encodable{
    func asDictonary() -> [String:Any]{
        guard let data =  try? JSONEncoder().encode(self) else{  // sunu denemenı ıstıyorum dıyorum
            
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any] // bunu string any tipine cevırebılıyorsan cevir
            return json ?? [:] // basarılıysa json don bossa bos dizi dön
        }catch{
            return [:]
        }
            
        }
}
