//
//  ExerciseRoutineView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 31/1/23.
//

import SwiftUI

struct ExerciseRoutineView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(0..<5) { index in
                        HStack {
                            ExerciseRoutineCellView(index: index)
                        }.onTapGesture {
                            print(index)
                        }
                    }
                }.toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            // TODO: - Logic
                        } label: {
                            Label("", systemImage: "plus")
                                .font(.title)
                        }
                    }
                }
                .navigationTitle("Mis rutinas")
            }
        }
        .onAppear {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.accentColor)]

            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.accentColor)]
        }
        
    }
}

struct ExerciseRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRoutineView()
    }
}
