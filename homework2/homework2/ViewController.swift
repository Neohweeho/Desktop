import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var distance1: UILabel!
    @IBOutlet weak var label2: UITextField!
    @IBOutlet weak var distance2: UILabel!
    @IBOutlet weak var label3: UITextField!
    @IBOutlet weak var label1: UILabel!

    var isMilesToKm = true

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.maximumValue = 100
        updateLabel()
    }
    @IBAction func actionswitch(_ sender: Any) {
        isMilesToKm.toggle()
        updateLabel()
    }
    

    @IBAction func sliderAction(_ sender: UISlider) {
        updateLabel()
    }
    

    func updateLabel() {
        let sliderValue = slider.value
        
        if isMilesToKm {

            let km = sliderValue * 1.60934
            label2.text = String(format: "%.2f km", km)
        } else {

            let miles = sliderValue * 0.621371
            label3.text = String(format: "%.2f miles", miles)

        }
    }
    
    @IBAction func convertdistance(_ sender: Any) {
        isMilesToKm.toggle()
        updateLabel()
    }
}
