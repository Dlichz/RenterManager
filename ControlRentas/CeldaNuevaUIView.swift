//
//  CeldaNuevaUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 17/01/24.
//

import SwiftUI

struct CeldaNuevaUIView: View {
    @StateObject private var viewModelCelda = CeldaNuevaViewModel()
    
    var inquilino : Inquilino
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("\(inquilino.nombreS) \(inquilino.primerApellido)")
                    .font(.system(size: 14, weight: .medium))
                    
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            HStack{
                Image(systemName: "calendar")
                Text("12 de febrero de 2024")
                    .font(.system(size: 12, weight: .regular))
            }
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
            HStack{
                HStack{
                    Text("Pago del mes:")
                        .font(.system(size: 12, weight: .regular))
                    Text("$\(viewModelCelda.formatearNumero(inquilino.renta))")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(viewModelCelda.colorByStatus(inquilino.hasPay))
                }
                Spacer()
                Text(inquilino.hasPay.rawValue)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(viewModelCelda.colorByStatus(inquilino.hasPay))
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 0, trailing: 8))
        }
        .padding(8)
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(8)
    }
}

#Preview {
    CeldaNuevaUIView(inquilino: Inquilino(nombreS: "Francisco David", primerApellido: "Zárate", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 2), renta: 2500.00, hasPay: .Pagado))
}
