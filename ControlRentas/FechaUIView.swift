//
//  FechaUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct FechaUIView: View {
    var body: some View {
        let hoy = Date()
        VStack(alignment: .trailing){
            Text(formatearFecha(hoy).capitalizarPrimeraLetra())
                .font(.subheadline)
                .multilineTextAlignment(.trailing)
        }
    }
    
    func formatearFecha(_ fecha: Date) -> String {
        let formateador = DateFormatter()
        formateador.locale = Locale(identifier: "es_ES")
        formateador.dateFormat = "EEEE d 'de' MMMM 'de' yyyy"

        return formateador.string(from: fecha)
    }
}

#Preview {
    FechaUIView()
}
