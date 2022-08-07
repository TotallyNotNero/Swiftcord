//
//  VoiceServer.swift
//  Swiftcord
//
//  Created by TotallyNotNero on 8/7/22.
//

import Foundation

public struct VoiceServer: Decodable {

    public let token: String

    public let guildId: String

    public let endpoint: String?
    
    init(_ json: [String: Any]) {
        self.token = json["token"] as! String
        self.guildId = json["guild_id"] as! String
        self.endpoint = json["endpoint"] as? String
    }

}
