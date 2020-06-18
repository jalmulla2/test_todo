//
//  Task.swift
//  Make it so SL Live
//
//  Created by Jassim Almulla on 6/18/20.
//  Copyright © 2020 Jassim Almulla. All rights reserved.
//

import Foundation
 
struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI ", completed: true),
    Task(title: "Commit to Firebase", completed: false),
    Task(title: "???????", completed: false),
    Task(title: "Profit", completed: false)
]
#endif
