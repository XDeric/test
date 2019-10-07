//
//  SaveFavorite.swift
//  Photo_Assesment
//
//  Created by EricM on 10/4/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation

struct SavePersistenceHelper {
    static let manager = SavePersistenceHelper()

    func save(newFavorite: Favorite) throws {
        try persistenceHelper.save(newElement: newFavorite)
    }

    func getFavorite() throws -> [Favorite] {
        return try persistenceHelper.getObjects()
    }
    
    func deleteFavorite(withID: Int) throws {
    }

    private let persistenceHelper = PersistenceHelper<Favorite>(fileName: "favorites.plist")

    private init() {}
}
