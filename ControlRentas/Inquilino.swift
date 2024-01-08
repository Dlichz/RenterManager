//
//  Inquilino.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import Foundation

struct Inquilino: Identifiable, Hashable {
    
    var id = UUID()
    var nombreS: String
    var primerApellido: String
    var segundoApellido: String?
    var numeroTelefonico: String
    var cuarto: Cuarto
    var renta: Double
    var deposito: Double?
    var fechaDePago: Date?
    var fechaDeSalida: Date?
    var fechaDeIngreso: Date?

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Inquilino, rhs: Inquilino) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Cuarto: Hashable {
    var numero: Int
    var planta: Planta?
}

enum Planta: Hashable {
    case baja, primerPiso, alta
}

