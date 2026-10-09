import UIKit
import Foundation

enum OperatingSystem: String {
    case iOS = "iOS"
    case Android = "Android"
    case WindowsPhone = "Windows Phone"
}
struct Phone {
    var model: String
    var manufacturer: String
    var memory: Int?
    var operatingSystem: OperatingSystem?

    func phoneDescription() {
        print("Модель: \(model)")
        print("Виробник: \(manufacturer)")
        print("Обсяг пам'яті: \(memory ?? 0) ГБ")
        if let system = operatingSystem {
            print("Операційна система: \(system.rawValue)")
        } else {
            print("Операційна система: не вказана")
        }
    }
}

func phoneDescription(phone: Phone) {
    print("\n Інформація про телефон")
    print("Модель: \(phone.model)")
    print("Виробник: \(phone.manufacturer)")
    if let memory = phone.memory {
        print("Обсяг пам'яті: \(memory) ГБ")
    } else {
        print("Обсяг пам'яті: не вказано")
    }
    let systemName = phone.operatingSystem?.rawValue ?? "не вказана"
    print("Операційна система: \(systemName)")
}
class User {
    var name: String
    var phone: Phone?

    init(name: String, phone: Phone? = nil) {
        self.name = name
        self.phone = phone
    }

    func showPhone() {
        print("\nКористувач: \(name)")
        guard let userPhone = phone else{
            print("У користустувача немає телефону")
            return
        }
        print("Телефон користувача:")
        phoneDescription(phone: userPhone)

        // Optional binding для опціонального телефону
//        if let userPhone = phone {
//            print("Телефон користувача:")
//            phoneDescription(phone: userPhone)
//        } else {
//            print("У користувача немає телефону.")
//        }
    }
}

let phone1 = Phone(
    model: "iPhone 16",
    manufacturer: "Apple",
    memory: 128,
    operatingSystem: .iOS
)
let phone2 = Phone(
    model: "Galaxy S25",
    manufacturer: "Samsung",
    memory: 256,
    operatingSystem: .Android
)
let phone3 = Phone(
    model: "Lumia 950",
    manufacturer: "Microsoft",
    memory: nil,
    operatingSystem: .WindowsPhone
)
let phone4 = Phone(
    model: "Невідома модель",
    manufacturer: "Невідомий виробник",
    memory: nil,
    operatingSystem: nil
)
let phones: [Phone] = [phone1, phone2, phone3, phone4]


for phone in phones {
    phoneDescription(phone: phone)
}

func phonDescription(phone: [Phone]) -> Int? {
    var pnoneWithMaxMemory = phones.first
    for phone in phones {
        guard let memory = phone.memory else {
            continue
        }
        if pnoneWithMaxMemory?.memory ?? 0 < memory {
            pnoneWithMaxMemory = phone
        }
    }
    return pnoneWithMaxMemory?.memory
}

print("\n Виклик методу структури")
phone1.phoneDescription()

let user1 = User(name: "Андрій", phone: phone1)
let user2 = User(name: "Олена", phone: phone2)
let user3 = User(name: "Максим")
user1.showPhone()
user2.showPhone()
user3.showPhone()
phonDescription(phone: phones)
