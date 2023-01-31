//
//  ExerciseRoutineCellView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 31/1/23.
//

import SwiftUI

struct ExerciseRoutineCellView: View {

    var index: Int

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 40, height: 80)
                .cornerRadius(10)
                .foregroundColor(Constants.Colors.grayLightColor)
            HStack(spacing: 180.0) {
                Text("Semana \(index)")
                    .font(.title2)
                    .foregroundColor(.white)
                Image(systemName: "chevron.forward")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ExerciseRoutineCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRoutineCellView(index: 1)
    }
}
