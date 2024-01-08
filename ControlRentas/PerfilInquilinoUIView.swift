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
        
        Text("Mi Perfil")
            .font(.largeTitle)
            .padding()
        
        VStack{
            Image(systemName: "person")
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(50)
            
            Text("Francisco David Zárate Vásquez")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            HStack{
                Text("Numero de Cuenta: ")
                    .font(.headline)
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                    .padding(24)
                Text("2015140186")
                    .padding()
            }
            let newString = String(format: "%.2f", inquilino.renta)
            
            Text("Saldo: $\(newString)")
                .font(.title)
                .foregroundColor(.yellow)
            
        }
        .padding()
    }
}

#Preview {
    PerfilInquilinoUIView(inquilino: Inquilino(nombreS: "Javier", primerApellido: "Gallegos", numeroTelefonico: "5535923166", cuarto: Cuarto(numero: 1), renta: 2000.0))
}
