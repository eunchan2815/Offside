import Foundation
import Moya

class LeagueViewModel: ObservableObject {
    @Published var leagueList: [CompetitionInfo] = []
    @Published var isLoading = true
    
    
    func getLeagueInfo() {
        isLoading = true
        provider.request(.leagueInfo) { result in
            defer { self.isLoading = false }
            
            switch result {
            case .success(let data):
                do {
                    let leagueInfo = try JSONDecoder().decode(LeagueInfoModel.self, from: data.data)
                    self.leagueList = leagueInfo.competitions ?? []
                } catch {
                    print("데이터 불러오기 실패: \(error.localizedDescription)")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
