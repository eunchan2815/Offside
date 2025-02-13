import SwiftUI

struct LeagueTable: View {
    let leagueName: String
    
    // 리그별 규정 정의
    public var leagueRules: [String: [QualificationRule]] = [
        "PL": [  // 프리미어리그
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등")
              ],
        "BL1": [  // 분데스리가
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등"),
            QualificationRule(color: .skyblue, text: "컨퍼런스리그"),
            QualificationRule(color: .orange, text: "승강 플레이오프")
               ],
        "PD": [  // 라리가
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등"),
            QualificationRule(color: .skyblue, text: "컨퍼런스리그")
              ],
        "SA": [  // 세리에A
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등"),
            QualificationRule(color: .skyblue, text: "컨퍼런스리그")
              ],
        "FL1": [  // 리그1
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등"),
            QualificationRule(color: .skyblue, text: "컨퍼런스리그")
               ],
        "DED": [  // 에레디비시
            QualificationRule(color: .green, text: "챔피언스리그"),
            QualificationRule(color: .blue, text: "유로파리그"),
            QualificationRule(color: .red, text: "강등"),
            QualificationRule(color: .skyblue, text: "컨퍼런스리그"),
            QualificationRule(color: .orange, text: "승강 플레이오프")
               ]
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            if let rules = leagueRules[leagueName] {
                ForEach(rules, id: \.text) { rule in
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(rule.color)
                            .frame(width: 20, height: 20)
                        Text(rule.text)
                            .font(.regular(14))
                    }
                }
            } else {
                Text("리그 규정 없음")
                    .font(.regular(14))
            }
        }
    }
}
