//
//  ViewController.swift
//  Semaphores
//
//  Created by Emmanuel Okwara on 29/08/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var movies: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let semaphore = DispatchSemaphore(value: 1)
        let queue = DispatchQueue.global()
        
        queue.async {
            print("I am in the first block before wait")
            semaphore.wait() // 0
            print("I am in the first block after wait")
            self.movies.append(self.downloadMovie("Avengers"))
            semaphore.signal()
        }
        
        queue.async {
            print("I am in the second block before wait")
            semaphore.wait()
            print("I am in the second block after wait")
            self.saveMovies()
            self.movies.remove(at: 0)
            semaphore.signal()
        }
        
        
        
        
        
//        let group = DispatchGroup()
//        let queue = DispatchQueue.global()
//
//        queue.async(group: group) {
//            let movieName = self.downloadMovie("Avengers")
//            self.movies.append(movieName)
//        }
//
//        queue.async(group: group) {
//            self.saveMovies()
//            self.movies.remove(at: 0)
//        }
//
//        group.notify(queue: .main) {
//            print("All downloads have been completed")
//        }
        
        print("I ain't waiting for no computer")
    }

    func downloadMovie(_ name: String) -> String {
        sleep(4)
        print("\(name) has been downloaded")
        return name
    }
    
    func saveMovies() {
        sleep(2)
        print("Movies have been saved")
    }
}

