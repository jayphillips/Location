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

// CoreData data store location
let applicationDocumentDirectory: URL = {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}()

// Crash alerts
let dataSaveFailedNotification = Notification.Name("DataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal error: \(error)")
    NotificationCenter.default.post(name: dataSaveFailedNotification, object: nil)
}
