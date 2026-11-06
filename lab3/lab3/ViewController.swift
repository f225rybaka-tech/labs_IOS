//
//  ViewController.swift
//  lab3
//
//  Created by stud on 30.10.2026.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var studentSwitch: UISwitch!
    @IBOutlet weak var cityPicker: UIPickerView!
    let cities = ["Київ", "Львів", "Одеса", "Харків", "Дніпро"]

        override func viewDidLoad() {
            super.viewDidLoad()

            cityPicker.delegate = self
            cityPicker.dataSource = self
        }
        // Кількість стовпців
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        // Кількість міст
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return cities.count
        }
        // Назви міст у списку
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            return cities[row]
        }
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
                     !name.isEmpty,
                     let ageText = ageTextField.text,
                     let age = Int(ageText),
                     age > 0 else {
                   print("Введіть правильне ім'я та вік")
                   return
               }

               let isStudent = studentSwitch.isOn

               let selectedRow = cityPicker.selectedRow(inComponent: 0)
               let city = cities[selectedRow]

               // Створюємо об'єкт користувача
               let user = User(name: name,
                               age: age,
                               isStudent: isStudent,
                               city: city)

               // Виводимо інформацію в консоль
               print("Анкета користувача")
               print("Ім'я: \(user.name)")
               print("Вік: \(user.age)")
               print("Студент: \(user.isStudent ? "Так" : "Ні")")
               print("Місто: \(user.city)")

    }
    



}

