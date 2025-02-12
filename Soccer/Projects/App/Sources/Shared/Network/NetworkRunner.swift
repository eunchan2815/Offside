import Moya
import Foundation

enum FootballAPI {
    case matchDay(league: String, startDate: String, endDate: String) //MARK: 일정
    case standing(league: String) //MARK: 순위
    case leagueInfo //MARK: 리그 정보
    case teamInfo(teamId: String) //MARK: 팀정보
    case manyGoal(league: String) //MARK: 득점왕
}


extension FootballAPI: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.football-data.org/v4")!
    }
    
    var path: String {
        switch self {
        case .matchDay(let league, _, _):
            return "/competitions/\(league)/matches"
        case .standing(let league):
            return "/competitions/\(league)/standings"
        case .leagueInfo:
            return "/competitions"
        case .teamInfo(let teamId):
            return "/teams/\(teamId)"
        case .manyGoal(let league):
            return "/competitions/\(league)/scorers"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Moya.Task {
        switch self {
        case .matchDay(_, let startDate, let endDate):
            return .requestParameters(
                parameters: ["dateFrom": startDate, "dateTo": endDate],
                encoding: URLEncoding.queryString
            )
        case .standing, .leagueInfo, .teamInfo, .manyGoal:
            return .requestPlain
        }
    }
    
    
    var headers: [String : String]? {
        return ["X-Auth-Token": "0c59fe8ec56246ab96eb7223ea04f9c7"]
    }
}
