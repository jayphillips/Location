//
//  Functions.swift
//  Locations
//
//  Created by Jay Phillips on 7/25/22.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
