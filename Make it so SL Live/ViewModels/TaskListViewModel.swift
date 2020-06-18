//
//  TaskListViewModel.swift
//  Make it so SL Live
//
//  Created by Jassim Almulla on 6/18/20.
//  Copyright © 2020 Jassim Almulla. All rights reserved.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModels = [TaskCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModels = testDataTasks.map { task in
            TaskCellViewModel(task: task)
        }
    }
    
    func addTask(task: Task){
        let taskVM = TaskCellViewModel(task:task)
        self.taskCellViewModels.append(taskVM)
    }
}
