import UIKit

class SubGroupCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var subGroupImage: UIImageView!
    @IBOutlet weak var subGroupName: UILabel!
    
    var subGroup: SubGroup? {
        didSet{
            subGroupName.text = subGroup?.name
            if let newImage = subGroup?.image {
                subGroupImage.image = UIImage(named: newImage)
            }
        }
    }
    
}
