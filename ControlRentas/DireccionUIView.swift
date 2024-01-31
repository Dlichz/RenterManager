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
            Color.gray.edgesIgnoringSafeArea(.all) // Fondo gris
            
            VStack{
                Text("Label 1")
                    .font(.title)
                    .foregroundColor(.black)
                
                Text("Label 2")
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .padding()
//            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .padding(.horizontal, 16)
            .background(Color.white)
            .cornerRadius(10)
            .frame(width: UIScreen.main.bounds.width)
        }
    }
}

#Preview {
    DireccionUIView()
}
