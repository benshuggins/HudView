//
//  Functions.swift
//  HudView
//
//  Created by Ben Huggins on 12/1/22.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
