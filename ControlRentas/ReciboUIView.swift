//
//  ReciboUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct ReciboUIView: View {
    
    var nombreCompleto: String
    var monto: String
    var departamento: Int
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Yo propietario:")
                .font(.title3)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

            Text("Francisco Zárate Guevara")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            Text("Recibí de:")
                .font(.title3)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

            Text(nombreCompleto)
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            Text("Domicilio: ")
                .font(.title3)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

            Text("Privada 20 de Enero, Lote 2, Número 60")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
            Text("San Sebastian Tutla, Oaxaca")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
            Text("C.P. 71320")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))

            Text("Departamento número \(String(departamento))")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("Renta del mes de: ")
                .font(.title3)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
            
            Text("Noviembre")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("La cantidad de:")
                .font(.title3)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
            
            Text("$\(monto)")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("dos mil pesos M.N. ")
                .font(.body)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        

    }
    
    func convertirNumeroALetras(_ numero: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "es_MX") // Utiliza el localizador adecuado para tu región

        guard let numeroComoPalabras = formatter.string(from: NSNumber(value: numero)) else {
            return ""
        }

        let cantidadPartes = numeroComoPalabras.components(separatedBy: " ")

        guard cantidadPartes.count >= 2 else {
            return ""
        }

        let parteEntera = cantidadPartes[0].capitalized
        let parteDecimal = cantidadPartes[1].capitalized

        let moneda = "pesos"
        let centavos = "centavos"
        let monedaAbreviatura = "M.N."

        let resultado = "Son \(parteEntera) \(moneda) \(parteDecimal) \(centavos) \(monedaAbreviatura)"
        return resultado
    }

}

#Preview {
    ReciboUIView(nombreCompleto: "Pedro Jimenez Vásquez", monto: "2000.00", departamento: 4)
}
