//
//  MyProgressView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 26/1/23.
//

import SwiftUI

struct MyProgressView: View {
    var body: some View {
        VStack {
            HStack(spacing: 40){
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.redApp, title: "Peso", value: "+ 5 Kg"))
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.creamColor, title: "Peso", value: "+5 KG"))
            }
            HStack(spacing: 40){
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.purpleColor, title: "Peso", value: "+5 KG"))
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.grayLightColor, title: "Peso", value: "+5 KG"))
            }
            HStack(spacing: 40){
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.pistachioLightColor, title: "Peso", value: "+5 KG"))
                ProgressCellView(model: ProgressCellModel(cellColor: Constants.Colors.lilacColor, title: "Peso", value: "+5 KG"))
            }
        }
        
    }
}

struct MyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressView()
    }
}
