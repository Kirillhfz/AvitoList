//
//  NetworkManager.swift
//  AvitoList-ForIntership
//
//  Created by Kirill Kornakov on 08.09.2021.
//

import Foundation

protocol NetworkDataManagerDelegate: AnyObject {
    func updateInterface(_: NetworkManager, with currentData: CurrentData)
}

class NetworkManager {
    
    weak var delegate: NetworkDataManagerDelegate? //Избавляемся от цикла сильных ссылок, если будут доп. экраны
    
    func fetchData() {
        let urlStribg = "https://run.mocky.io/v3/1d1cb4ec-73db-4762-8c4b-0b8aa3cecd4c"
        guard let url = URL(string: urlStribg) else { return }
        let session = URLSession.init(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                if let currentData = self.parseJSON(withData: data) {
                    DispatchQueue.main.async {
                        self.delegate?.updateInterface(self, with: currentData)
                    }
                }
            }
        }
        task.resume()
    }
    
    func parseJSON(withData data: Data) -> CurrentData? {
        
        let decoder = JSONDecoder()
        do {
            let companyData = try decoder.decode(AvitoData.self, from: data)
            guard let correntData = CurrentData(companyData: companyData) else { return nil }
            return correntData
        } catch let error as NSError {
            print("Error serialization json", error.localizedDescription)
        }
        return nil
    }
}
