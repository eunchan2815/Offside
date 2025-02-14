import Foundation
import Moya

class ManyGoalViewModel: ObservableObject {
    @Published var scorer: [Scorer] = []
    @Published var manyGoalInfo: ManyGoalModel?
    @Published var isLoading = true
    
    
    func fetchManyGoalData(_ league: String) {
        isLoading = true
        provider.request(.manyGoal(league: league)) { result in
            defer { self.isLoading = false }
            
            switch result {
            case .success(let data):
                do {
                    let manyGoalData = try JSONDecoder().decode(ManyGoalModel.self, from: data.data)
                    self.scorer = manyGoalData.scorers ?? []
                    self.manyGoalInfo = manyGoalData
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
