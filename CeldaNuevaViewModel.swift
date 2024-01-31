//
//  CeldaNuevaViewModel.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 17/01/24.
//

import Foundation
import Combine
import SwiftUI

class CeldaNuevaViewModel: ObservableObject {
    @Published var inquilinos: [Inquilino] = []
    
    func formatearNumero(_ numero: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        guard let numeroFormateado = formatter.string(from: NSNumber(value: numero)) else {
            return ""
        }
        
        return numeroFormateado
    }
    
    func nombreCompletoDel(inquilino: Inquilino) -> String {
        var nombreCompleto = ""
        if let segundoApellido = inquilino.segundoApellido{
            nombreCompleto = "\(inquilino.nombreS) \(inquilino.primerApellido) \(segundoApellido)".capitalized
        } else {
            nombreCompleto = "\(inquilino.nombreS) \(inquilino.primerApellido)".capitalized
        }
        return nombreCompleto
    }
    
    func colorByStatus(_ status: StatusPago) -> Color {
        switch status {
        case .Pagado:
            return Color.green
        case .Pendiente:
            return Color.gray
        case .Atrasado:
            return Color.orange
        }
    }

}
