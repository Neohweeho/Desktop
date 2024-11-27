import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TotalPrice: UILabel!
    @IBOutlet weak var button_suimai: UIButton!
    @IBOutlet weak var button_wantanmee: UIButton!
    @IBOutlet weak var CartTableView: UITableView!
    @IBOutlet weak var button_lohmaigai: UIButton!
    
    // Model to store cart items
    var cartItems: [(name: String, price: Double)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CartTableView.dataSource = self
        CartTableView.delegate = self  // Ensure delegate is set
        CartTableView.reloadData()  // Reload in case there are items when the view loads
    }
    
    // Clear all items from the cart
    @IBAction func clearCartTapped(_ sender: Any) {
        cartItems.removeAll()
        CartTableView.reloadData()
        TotalPrice.text = "RM0.00"
    }

    @IBAction func suimai_select(_ sender: Any) {
        let name = "Suimai       RM3"
        let price = 3.00 // Example price for Suimai
        cartItems.append((name, price))
        CartTableView.reloadData()
        updateTotalPrice()
    }
    @IBAction func lohmaigai_select(_ sender: Any) {
        let name = "Lohmaigai    RM4"
        let price = 4.00 // Example price for Lohmaigai
        cartItems.append((name, price))
        CartTableView.reloadData()
        updateTotalPrice()
    }
    @IBAction func wantanmee_select(_ sender: Any) {
        let name = "Wantanmee   RM 5"
        let price = 5.00 // Example price for Wantanmee
        cartItems.append((name, price))
        CartTableView.reloadData()
        updateTotalPrice()
    }


    // TableView DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Get the item for this row
        let item = cartItems[indexPath.row]
        // Set the cell's labels to display the item's name and price
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.price)"
        return cell
    }
    
    // Update the total price of items in the cart
    func updateTotalPrice() {
        let total = cartItems.reduce(0) { $0 + $1.price }
        TotalPrice.text = "RM\(String(format: "%.2f", total))"
    }
}
