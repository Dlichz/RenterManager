//
//  BuscadorUIView.swift
//  ControlRentas
//
//  Created by Francisco David Zárate Vásquez on 17/01/24.
//

import SwiftUI

struct BuscadorUIView: View {
    @State private var texto: String = ""
    
    var body: some View {
        HStack {
            TextField("Buscar...", text: $texto)
                .padding(8)
//                .border(Color.gray, width: 1)
            
            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 2)
        )
        .padding()
        .foregroundColor(.white)
    }
}

#Preview {
    BuscadorUIView()
}
