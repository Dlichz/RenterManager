//
//  EditorPerfilUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 07/01/24.
//

import SwiftUI

struct PerfilUIView: View {
    var titulo: String
    @State var placeholder: String = "default"
    
    var body: some View {
        VStack{
            Text("Noe Javier,\nCervantez Gonzales")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .frame(height: 100)
                .font(.largeTitle)

        }
        
        HStack{
            Text("Inquilino desde: ")
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Text("02/12/23")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
//        .background(Color.gray)
        .modifier(formLine())
        
        HStack{
            Text("Departamento:")
                .modifier(formLine())
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Spacer()
            Text("2")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
        
        HStack{
            Text("Renta:")
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Spacer()
            Text("$2300")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
        
        HStack{
            Text("Deposito:")
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                .modifier(formLine())
            Spacer()
            Text("$1200")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
        
        HStack{
            Text("Número de telefono")
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Spacer()
            Text("9531789965")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
        
        HStack{
            Text("Proxima fecha de pago")
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Spacer()
            Text("02/12/23")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }


    }
}

#Preview {
    PerfilUIView(titulo: "Nombre")
}

struct formLine : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .background(Color.blue.cornerRadius(15))
            .padding(.horizontal)
        
    }
    
    
}
