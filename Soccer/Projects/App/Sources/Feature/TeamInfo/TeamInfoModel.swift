import Foundation

struct TeamInfoModel: Codable, Hashable {
    let area: Area
    let shortName: String
    let crest: String
    let website: String
    let runningCompetitions: [RunningCompetition]?
    let coach: Coach?
    let squad: [Squad]?
    
    var cleanName: String {
        shortName.replacingOccurrences(of: " ", with: "")
    }
}

// 장소
struct Area: Codable, Hashable {
    let name: String
}

// 진행 중인 리그
struct RunningCompetition: Codable, Hashable {
    let id: Int
    let name: String
    let code: String
    let emblem: String?
}

// 코치
struct Coach: Codable, Hashable {
    let name: String
}

// 선수 명단
struct Squad: Codable, Hashable {
    let name: String
    let position: String
}
