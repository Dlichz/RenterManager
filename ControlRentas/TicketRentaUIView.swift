//
//  TicketRentaUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct TicketRentaUIView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                FechaUIView()
                    .frame(width: 230)
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 32, trailing: 0))
            }

            ReciboUIView(nombreCompleto: "Ricardo Javier Montana Perez", monto: "2300", departamento: 4)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Spacer()
            Text("num. 231")
                .font(.footnote)
        }
        .background(Color(.fondo))
    }
}

#Preview {
    TicketRentaUIView()
}
