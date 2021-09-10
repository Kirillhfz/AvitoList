//
//  CompanyData.swift
//  AvitoList-ForIntership
//
//  Created by Kirill Kornakov on 09.09.2021.
//

import Foundation

struct AvitoData: Decodable {
    let company: Company
}

struct Company: Decodable {
    let name: String
    let employees: [Employee]
}

struct Employee: Codable {
    let name: String
    let phoneNumber: String
    let skills: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case skills
    }
}
