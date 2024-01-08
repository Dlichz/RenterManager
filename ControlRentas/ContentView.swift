//
//  ContentView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

private var inquilinos: [Inquilino] = [
    Inquilino(nombreS: "Javier", primerApellido: "Velazques", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 1), renta: 2500.00, fechaDePago: Date()),
    
    Inquilino(nombreS: "Francisco", primerApellido: "López", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 2), renta: 1500.00, fechaDePago: Date()),
    
    Inquilino(nombreS: "Norma", primerApellido: "Morales", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 3), renta: 1900.00, fechaDePago: Date()),
    
    Inquilino(nombreS: "David", primerApellido: "Bautista", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 4), renta: 1800.00, fechaDePago: Date()),
    
    Inquilino(nombreS: "Irma", primerApellido: "Gutierrez", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 5), renta: 1800.00, fechaDePago: Date())

]


struct ContentView: View {
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            
            /*
             NavigationView {
                 List(elementos, id: \.self) { elemento in
                     NavigationLink(destination: DetalleView(elemento: elemento)) {
                         Text(elemento)
                     }
                 }
                 .navigationTitle("Lista Navegable")
             }*/
            
            List(inquilinos, id: \.self) { inquilino in
                NavigationLink(destination: PerfilInquilinoUIView(inquilino: inquilino)) {
                    InquilinoCelda(inquilino: inquilino)
                }
                
                
            }
            .navigationTitle("Inquilinos")
            .toolbar { EditButton() }
        }
    }
}

#Preview {
    ContentView()
}
