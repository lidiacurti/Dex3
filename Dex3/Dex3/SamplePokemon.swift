//
//  SamplePokemon.swift
//  Dex3
//
//  Created by ulixe on 29/04/24.
//

import Foundation
import CoreData

struct SamplePokemon {
    static let samplePokemon = {
        let context = PersistenceController.preview.container.viewContext
        
        let fetchRequest: NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        //limitare al primo perchè abbiamo solo bulbasaur
        fetchRequest.fetchLimit = 1
        
        let results = try!  context.fetch(fetchRequest)
        
        return results.first
    }()
}
