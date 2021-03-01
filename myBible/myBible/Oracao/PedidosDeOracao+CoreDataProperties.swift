//
//  PedidosDeOracao+CoreDataProperties.swift
//  
//
//  Created by Fabio Makihara on 01/03/21.
//
//

import Foundation
import CoreData


extension PedidosDeOracao {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PedidosDeOracao> {
        return NSFetchRequest<PedidosDeOracao>(entityName: "PedidosDeOracao")
    }

    @NSManaged public var pedido: String?

}
