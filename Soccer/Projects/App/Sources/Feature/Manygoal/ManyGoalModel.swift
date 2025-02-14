import Foundation

struct ManyGoalModel: Decodable, Hashable {
    let filters: FiltersInfo?
    let competition: CompetitionInfos?
    let scorers: [Scorer]?
}

struct FiltersInfo: Decodable, Hashable {
    let season: String
    
    var clearSeason: String {
        if let seasonInt = Int(season) {
            let nextSeason = seasonInt + 1
            return String(nextSeason)
        }
        return season
    }
}

struct CompetitionInfos: Decodable, Hashable {
    let id: Int
    let name: String
    let code: String
    let emblem: String
}

struct Scorer: Decodable, Hashable {
    let player: Player?
    let team: TeamInfo?
    let playedMatches: Int
    let goals: Int
    let assists: Int?
}

struct Player: Decodable, Hashable {
    let lastName: String
    let section: String
}

struct TeamInfo: Decodable, Hashable {
    let id: Int
    let shortName: String
    let crest: String
}
