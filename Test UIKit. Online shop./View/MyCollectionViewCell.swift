import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupLabel: UILabel!
    
    var group: Group?  {
        didSet {
            groupLabel.text = group?.name
            if let newImage = group?.image {
                groupImageView.image = UIImage(named: newImage)
            }
        }
    }
}
