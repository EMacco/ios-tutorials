//
//  ViewController.swift
//  DownloadTask
//
//  Created by Emmanuel Okwara on 19/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var downloadImageView: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 0
    }

    @IBAction func downloadBtnClicked(_ sender: UIButton) {
        progressLbl.isHidden = false
        downloadImageView.image = nil
        let urlString = "https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/rottweiler-card-small.jpg?bust=1535568036"
        guard let url = URL(string: urlString) else {
            print("This is an invalid URL")
            return
        }
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: OperationQueue())
        session.downloadTask(with: url).resume()
    }
    
}

extension ViewController: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        guard let data = try? Data(contentsOf: location) else {
            print("The data could not be loaded")
            return
        }
        
        let image = UIImage(data: data)
        DispatchQueue.main.async { [weak self] in
            self?.downloadImageView.image = image
            self?.progressLbl.isHidden = true
        }
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)
        
        DispatchQueue.main.async { [weak self] in
            self?.progressBar.progress = progress
            self?.progressLbl.text = "\(progress * 100)%"
        }
    }
}
