import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    
    var product: Product? {
        didSet{
            productLabel.text = product?.name
            if let image = product?.image {
                productImage.image = UIImage(named: image)
            }
        }
    }
}


    
