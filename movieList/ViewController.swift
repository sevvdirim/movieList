//
//  ViewController.swift
//  movieList
//
//  Created by Apple Atölyesi on 8.08.2024.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var mycollectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mycollectionView.dataSource = self
        mycollectionView.delegate = self
        mycollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    if let flowLayout = mycollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
        flowLayout.scrollDirection = .horizontal
        }
    }


}


extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath) as! MovieCollecitonViewCell
        cell.setup(movie: movieList[indexPath.row])
        print("Movie Number: " + String(indexPath.row) + "Title: " + movieList[indexPath.row].title)
        return cell
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:300.0, height: 300.00)
    }
}

extension ViewController:UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      //  print("Selected:" + movieList[indexPath.row].title)
        
        if let myNavController = self.navigationController {
            let storyBoard = UIStoryboard(name:"Main", bundle: nil)
            let detailViewController:DetailViewController =
            storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            
            detailViewController.selectedIndex = indexPath.row
            myNavController.pushViewController(detailViewController , animated: true)
        }
    }
}
