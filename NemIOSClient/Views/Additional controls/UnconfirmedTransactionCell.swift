import UIKit

class UnconfirmedTransactionCell: UITableViewCell
{
    @IBOutlet weak var fromAccount: UILabel!
    @IBOutlet weak var toAccount: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var xem: UILabel!
    @IBOutlet weak var confirm: UIButton!
    @IBOutlet weak var showChanges: UIButton!
    
    var delegate :UnconfirmedTransactionVC? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        fromAccount.text = ""
        toAccount.text = ""
        if message != nil {
            message.text = ""
            xem.text = "0 XEM"
        }
        
        confirm.layer.cornerRadius = 5
        
        if showChanges != nil {
            showChanges.layer.cornerRadius = 5
        }
        self.layer.cornerRadius = 10
    }

    @IBAction func confirmTouchUpInside(sender: AnyObject) {
        self.delegate?.confirmTransactionAtIndex(self.tag)
    }
    @IBAction func showTouchUpInside(sender: AnyObject) {
        self.delegate?.showTransactionAtIndex(self.tag)
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
