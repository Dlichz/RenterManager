//
//  ContentView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

private var inquilinos: [Inquilino] = [
    Inquilino(nombreS: "Javier", primerApellido: "Velazques", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 1), renta: 2500.00, fechaDePago: Date(), hasPay: .Atrasado),
    
    Inquilino(nombreS: "Francisco", primerApellido: "López", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 2), renta: 1500.00, fechaDePago: Date(), hasPay: .Pendiente),
    
    Inquilino(nombreS: "Norma", primerApellido: "Morales", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 3), renta: 1900.00, fechaDePago: Date(), hasPay: .Pagado),
    
    Inquilino(nombreS: "David", primerApellido: "Bautista", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 4), renta: 1800.00, fechaDePago: Date(), hasPay: .Pagado),
    
    Inquilino(nombreS: "Argelia", primerApellido: "Bautista", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 4), renta: 1800.00, fechaDePago: Date(), hasPay: .Pagado),
    
    Inquilino(nombreS: "Margarita", primerApellido: "Bautista", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 4), renta: 1800.00, fechaDePago: Date(), hasPay: .Pendiente),
    Inquilino(nombreS: "Abril", primerApellido: "Davez", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 4), renta: 1800.00, fechaDePago: Date(), hasPay: .Pagado),
    
    Inquilino(nombreS: "Irma", primerApellido: "Gutierrez", numeroTelefonico: "9513929968", cuarto: Cuarto(numero: 5), renta: 1800.00, fechaDePago: Date(), hasPay: .Pagado)

]


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                BuscadorUIView()
//                HStack(){
//
//
//                }
                VStack{
                    Text("Filtrar por:")
                        .padding(.leading, 8)
                    HStack{
                        Text("Nombre")
                            .frame(height: 8)
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.interacciones)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                        Text("Fecha")
                            .frame(height: 8)
                            .foregroundStyle(.black)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                        Text("filtro 1")
                            .frame(height: 8)
                            .foregroundStyle(.black)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                }
                
                List {
                    ForEach(inquilinos) { inquilino in
                        CeldaNuevaUIView(inquilino: inquilino)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.backgroundColorApp)
                    }
                }
                .listStyle(.inset)
                
                Button(action: {
                    // Acción del botón
                    print("Botón presionado")
                }) {
                    HStack {
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                        Text("Agregar nuevo inquilino")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 0.7)
                    .background(Color.interacciones)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white, lineWidth: 2)
                    )
                }
            }
            .navigationTitle("Inquilinos")
        }
//        .background(Color.backgroundColorApp)
    }
}


#Preview {
    ContentView()
}
