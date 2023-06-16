//
//  Musician.swift
//  OOPSwift
//
//  Created by Murat Yilmaz on 14.06.2023.
//

import Foundation

enum MusicianType{
    case Baterist
    case Gitaris
    case Solist
}

class Musician {

    
    var name : String = ""
    var age : Int = 0
    var instrument : String = ""
    var type : MusicianType = .Baterist

    init(name: String, age: Int, instrument: String, type: MusicianType){
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    init(){
        print("Musician created")
    }
    
    func testFonk(){
        print("test fonk")
    }
    
    private func ozelFunc(){
        print("Özel Fonk")
    }
}


