//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Swantan Barua on 28/10/26.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - PROPERTIES
    @State private var randomCircleCount = Int.random(in: 10...30)
    @State private var isAnimating: Bool = false
    
    // MARK: - FUNCTIONS
    
    // COORDINATE
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    // SCALE
    func randomCircle() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    // DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(
                    0...randomCircleCount,
                    id: \.self
                ) { _ in
                    Circle()
                        .foregroundStyle(.gray)
                        .opacity(0.2)
                        .frame(
                            width: randomSize(),
                            height: randomSize(),
                            alignment: .center
                        )
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(
                                stiffness: 0.5,
                                damping: 0.5
                            )
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }
            }
            .drawingGroup()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MotionAnimationView()
}
