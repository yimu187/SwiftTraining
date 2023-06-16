//
//  FavoriteModel.swift
//  MovieBook
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import Foundation

struct FavoriteElement : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

struct FavoriteGroup : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElement]
}

let homer = FavoriteElement(name: "Homer Simpson", imagename: "HomerSimpson", description: "Simpson Cartoon")
let marge = FavoriteElement(name: "Marge Simpson", imagename: "MargeSimpson", description: "Simpson Cartoon")
let bart = FavoriteElement(name: "Bart Simpson", imagename: "BartSimpson", description: "Simpson Cartoon")
let favoriteSimpsons = FavoriteGroup(title: "Simpsons", elements: [homer, marge, bart])

let eric = FavoriteElement(name: "Eric Cartman" , imagename: "Eric", description: "Southpark Cartoon")
let kenny = FavoriteElement(name: "Kenny Cormick", imagename: "Kenny", description: "Southpark Cartoon")
let kyle = FavoriteElement(name: "Kyle", imagename: "Kyle", description: "Southpark Cartoon")
let favoriteSouthpark = FavoriteGroup(title: "Southpark", elements: [eric, kenny, kyle])

let myFavorites = [favoriteSimpsons, favoriteSouthpark]

