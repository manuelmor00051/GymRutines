//
//  ProgressCellView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 26/1/23.
//

import SwiftUI

struct ProgressCellView: View {

    let model: ProgressCellModel

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 150, height: 180)
                .foregroundColor(model.cellColor)
                .cornerRadius(10)
            VStack {
                Image("Body")
                    .resizable()
                    .frame(width: 50, height: 50)
                VStack (spacing: 20) {
                    Text("Peso").foregroundColor(Color.black)

                    Text("+5 KG").font(.title).foregroundColor(Color.black)
                }
            }
        }
    }
}

struct ProgressCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCellView(model: ProgressCellModel(cellColor: Color.blue, title: "Peso", value: "+5 Kg"))
    }
}
