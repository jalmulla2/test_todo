//
//  TaskCellViewModel.swift
//  Make it so SL Live
//
//  Created by Jassim Almulla on 6/18/20.
//  Copyright © 2020 Jassim Almulla. All rights reserved.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var task: Task
    var id = ""
    @Published var completionStateIconName = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    init(task: Task) {
        self.task = task
        
        $task
            .map { task in
                task.completed ? "chekmark.circle.fill" : "circle"
            }
            .assign(to: \.completionStateIconName, on: self)
            .store(in: &cancellables)
        
        $task
            .map{ task in
                task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
