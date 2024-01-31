//
//  DireccionUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct DireccionUIView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Detalles de pago")
                    .font(.title2)
                    .frame(height: 50)
                    .bold()
                HStack{
                    Text("Renta del mes: Nov")
                    Text("Año: 2023")
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.00, trailing: 0))
                
                Text("Monto Recibido:")
                Text("$2000.00")

                HStack{
                    Text("Departamento")
                    Text("B3")
                }
                
            }
        }
    }
}

#Preview {
    DireccionUIView()
}
