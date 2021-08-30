import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var mostPopularCollectionView: UICollectionView!

    let mostPopularMovies = [Movie(id: "", title: "Inception", fullTitle: "Inception", year: "2010", image: "", imDbRating: "10", imDbRatingCount: "12345")]

    override func viewDidLoad() {
        super.viewDidLoad()

        mostPopularCollectionView.dataSource = self
        mostPopularCollectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("numberOfItemsInSection")

        switch (collectionView) {
            case mostPopularCollectionView:
                print("numberOfItemsInSection mostPopularCollectionView \(mostPopularMovies.count)")
                return mostPopularMovies.count
            default:
                return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cellForItemAt")

        let cell = mostPopularCollectionView.dequeueReusableCell(withReuseIdentifier: "mostPopularCell", for: indexPath)

        switch collectionView {
            case mostPopularCollectionView:
                (cell as! MostPopularCollectionViewCell).bind(movie: mostPopularMovies[indexPath.row])
            default:
                (cell as! MostPopularCollectionViewCell).bind(movie: mostPopularMovies[indexPath.row])
        }

        return cell
    }
}

