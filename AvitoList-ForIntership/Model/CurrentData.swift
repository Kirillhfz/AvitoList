//
//  CurrentData.swift
//  AvitoList-ForIntership
//
//  Created by Kirill Kornakov on 09.09.2021.
//

import Foundation

//Class for update interface
class CurrentData {
    var avitoInfo: AvitoData?
    
    init?(companyData: AvitoData?) {
        avitoInfo = companyData
    }
}
