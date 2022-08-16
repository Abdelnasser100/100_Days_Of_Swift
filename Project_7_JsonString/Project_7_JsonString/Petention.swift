//
//  Petention.swift
//  Project_7_JsonString
//
//  Created by Abdelnasser on 15/08/2022.
//

import Foundation


struct Petition:Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
