//
//  String+Extension.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import Foundation

extension String {
    func capitalizarPrimeraLetra() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
