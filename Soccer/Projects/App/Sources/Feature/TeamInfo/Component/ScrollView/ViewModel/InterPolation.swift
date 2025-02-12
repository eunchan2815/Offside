//
//  InterPolation.swift
//  TabView
//
//  Created by dgsw30 on 1/23/25.
//

import SwiftUI

extension CGFloat {
    func interpolate(inputRange: [CGFloat], outputRange: [CGFloat]) -> CGFloat {
        /// Input과 Output 범위의 개수가 같아야 한다는 점을 유의하세요.
        let x = self
        let length = inputRange.count - 1

        /// 값이 입력 범위의 최소값보다 작으면 최소 출력값 반환
        if x <= inputRange[0] {
            return outputRange[0]
        }

        for index in 1...length {
            let x1 = inputRange[index - 1]
            let x2 = inputRange[index]

            let y1 = outputRange[index - 1]
            let y2 = outputRange[index]

            /// 선형 보간 공식: y1 + ((y2 - y1) / (x2 - x1)) * (x - x1)
            if x <= inputRange[index] {
                let y = y1 + ((y2 - y1) / (x2 - x1)) * (x - x1)
                return y
            }
        }

        /// 값이 입력 범위의 최대값보다 크면 최대 출력값 반환
        return outputRange[length]
    }
}
