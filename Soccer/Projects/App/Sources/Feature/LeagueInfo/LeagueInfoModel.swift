import Foundation

struct LeagueInfoModel: Codable {
    let competitions: [CompetitionInfo]?
}

struct CompetitionInfo: Codable, Hashable {
    let area: LeagueArea
    let name: String
    let emblem: String
    let code: String
}

struct LeagueArea: Codable, Hashable {
    let id: Int
}
