//
//  PerfilInquilinoUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct PerfilInquilinoUIView: View {
    var inquilino: Inquilino
    var body: some View {
        VStack{
            Text("Mi Perfil")
                .font(.largeTitle)
                .padding()
            Image(systemName: "person")
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(50)
            
            Text("\(inquilino.nombreS) " +  "\(inquilino.primerApellido) ")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            HStack{
                Text("Departamento")
                    .font(.headline)
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                    .padding(24)
                Text(inquilino.cuarto.numero.description)
                    .padding()
            }
            let newString = String(format: "%.2f", inquilino.renta)
            
            Text("Renta: $\(newString) MXN")
                .font(.title)
                .foregroundColor(.black)
            
        }
        .padding()
    }
}

#Preview {
    PerfilInquilinoUIView(inquilino: Inquilino(nombreS: "Javier", primerApellido: "Gallegos", numeroTelefonico: "5535923166", cuarto: Cuarto(numero: 1), renta: 2000.0, hasPay: .Pendiente))
}
