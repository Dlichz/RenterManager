//
//  InquilinoCelda.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct InquilinoCelda: View {
    var inquilino: Inquilino
    let fechaEspecifica = Calendar.current.date(from: DateComponents(year: 2023, month: 1, day: 15)) ?? Date()
    
    var body: some View {

        VStack(alignment: .leading){
            Text("\(inquilino.nombreS) \(inquilino.primerApellido)")
                .font(.headline)
                .frame(height: 50, alignment: .leading)
            HStack(alignment: .lastTextBaseline){
                Text(formatearFecha(fechaEspecifica))
                    .font(.subheadline)
                Spacer()
                Text(formatoMoneda(inquilino.renta))
                    .font(.subheadline)
                
            }
            .padding(4)
        }
    }
    
    
    func formatoMoneda(_ valor: Double) -> String {
        let formateador = NumberFormatter()
        formateador.numberStyle = .currency
        formateador.minimumFractionDigits = 2
        formateador.maximumFractionDigits = 2
        
        if let textoFormateado = formateador.string(from: NSNumber(value: valor)) {
            return textoFormateado
        } else {
            return "$0.00" // Valor predeterminado en caso de error
        }
    }
    
    func formatearFecha(_ fecha: Date) -> String {
        let formateador = DateFormatter()
        formateador.locale = Locale(identifier: "es_ES") // Establecer el localizador en español
        formateador.dateFormat = "EEEE d 'de' MMMM 'de' yyyy" // Formato personalizado
        
        return formateador.string(from: fecha)
    }
}

#Preview {

    InquilinoCelda(inquilino: Inquilino(nombreS: "Javier", primerApellido: "Gallegos", numeroTelefonico: "5535923166", cuarto: Cuarto(numero: 1), renta: 2000.0))
}
