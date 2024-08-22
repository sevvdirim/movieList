//
//  DetailViewController.swift
//  movieList
//
//  Created by Apple Atölyesi on 21.08.2024.
//

import Foundation
import UIKit

class DetailViewController:UIViewController {
    var selectedIndex:Int = 0
    
    @IBOutlet var movieName: UILabel!
    @IBOutlet var duration: UILabel!
    @IBOutlet var rating: UILabel!
    @IBOutlet var releaseDate: UILabel!
    @IBOutlet var genre: UILabel!
    @IBOutlet var desc: UITextView!
    @IBOutlet var movieImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SELECTED INDEX: \(selectedIndex)")
        let movie:Movie = movieList[selectedIndex]
        print("SELECTED MOVIE: " + movie.title)
        
        if let temp = movie.image {
            movieImageView.image = temp
        }
        if let temp = movie.title {
            movieName.text = temp
        }
        if let temp = movie.duration{
            duration.text = String(temp) + "Minutes"
        }
        if let temp = movie.rating {
            rating.text = String(temp)
        }
        if let temp = movie.releaseDate {
            releaseDate.text = String(temp)
        }
        if let temp = movie.genre {
            genre.text = String(temp)
        }
        if let temp = movie.desc {
            desc.text = String(temp)
        }
        
    }
    
    func loadWebView(){
        
            let storyBoard = UIStoryboard(name:"Main", bundle: nil)
            let webViewController:WebViewController =
            storyBoard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
            
            webViewController.selectedMovieIndex = selectedIndex
            webViewController.modalPresentationStyle = .popover
        self.present(webViewController, animated: true)
        
        }
    }

