import Foundation

struct StandingModel: Codable, Hashable {
    let filters: Filters
    let competition: Competition?
    let season: Season?
    let standings: [Standing]?
}

struct Filters: Codable, Hashable {
    let season: String
    
    var clearSeason: String {
        if let seasonInt = Int(season) {
            let nextSeason = seasonInt + 1
            return String(nextSeason)
        }
        return season
    }
}


// 리그 정보
struct Competition: Codable, Hashable {
    let name: String
    let emblem: String
}

// 시즌 정보
struct Season: Codable, Hashable {
    let startDate: String
    let endDate: String
}

// 순위 정보
struct Standing: Codable, Hashable {
    let table: [Table]  // table은 배열로 되어야 함
}

// 팀 정보
struct Table: Codable, Hashable {
    let position: Int  // 등수
    let team: Team
    let playedGames: Int  // 경기 수
    let goalDifference: Int  // 골 득실
    let points: Int
}

// 팀 정보
struct Team: Codable, Hashable {
    let id: Int
    let shortName: String
    let crest: String
}
