//
//  StandingViewModel.swift
//  Soccer
//
//  Created by dgsw30 on 2/12/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import Foundation
import Moya

class StandingViewModel: ObservableObject {
    @Published var leagueLank: [Table] = []
    @Published var isLoading = true
    @Published var competition: Competition?
    @Published var filters: Filters?
    
    
    func getLeagueLank(_ league: String) {
        isLoading = true
        provider.request(.standing(league: league)) { result in
            defer { self.isLoading = false }
            switch result {
            case .success(let data):
                do {
                    let leagueStanding = try JSONDecoder().decode(StandingModel.self, from: data.data)
                    if let standings = leagueStanding.standings {
                        for standing in standings {
                            self.leagueLank.append(contentsOf: standing.table)
                        }
                    }
                    self.competition = leagueStanding.competition
                    self.filters = leagueStanding.filters
                } catch {
                    
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
