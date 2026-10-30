//
//  ContentView.swift
//  lab4_2
//
//  Created by stud on 30.10.2026.
//


import SwiftUI

struct ContentView: View {
    @State private var city = ""
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.blue)
                        .frame(height: 190)
                    VStack(spacing: 10) {
                        Text("Мій профіль")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                        Text("Студент")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                }
                VStack(alignment: .leading, spacing: 15) {
                    Text("Про мене")
                        .font(.title2)
                        .bold()
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        Text("Ім'я: Андріян")
                    }
                    HStack {
                        Image(systemName: "graduationcap.fill")
                            .foregroundColor(.blue)
                        Text("Навчаюсь в університеті")
                    }
                    HStack {
                        Image(systemName: "laptopcomputer")
                            .foregroundColor(.blue)
                        Text("Цікавлюсь програмуванням")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(12)
                VStack(alignment: .leading, spacing: 15) {
                    Text("Мої захоплення")
                        .font(.title2)
                        .bold()
                    HStack(spacing: 10) {
                        Text("Програмування")
                            .padding(10)
                            .background(Color.blue.opacity(0.15))
                            .cornerRadius(8)
                        Text("Ігри")
                            .padding(10)
                            .background(Color.blue.opacity(0.15))
                            .cornerRadius(8)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(12)
                VStack(alignment: .leading, spacing: 10) {
                    Text("Введіть своє місто:")
                        .font(.headline)
                    TextField("Назва міста", text: $city)
                        .textFieldStyle(.roundedBorder)
                }
                Spacer()
            }
            .padding()
        }
        .background(Color.gray.opacity(0.1))
    }
}
#Preview {
    ContentView()
}



