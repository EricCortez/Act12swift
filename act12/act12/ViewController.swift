import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var tipoGesto: UILabel!
   

    override func viewWillAppear( _ animated: Bool)
    {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }

    override func viewDidLoad()
    {
            super.viewDidLoad()

        let gestoTap = UITapGestureRecognizer(target: self, action: #selector(accionGesto(_:)))

        let gestoSwipe = UISwipeGestureRecognizer(target: self, action: #selector(accionGesto(_:)))

        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)

        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)

    }

    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
    }

    @objc func accionGesto(_ gesture: UIGestureRecognizer)
    {

        if gesture.isKind(of:UITapGestureRecognizer.self)
        {
            tipoGesto.text = "Tap_"
        }
        if gesture.isKind(of:UISwipeGestureRecognizer.self)
        {
            tipoGesto.text = "Swipe"
        }

        animacion()
    }

    func animacion(){

    UIView.animate(withDuration: 10, delay: 0.2, options: [], animations:
        {
              self.tipoGesto.alpha = 1.0})
        {
              _ in self.tipoGesto.alpha = 0.0
        }
    }
}
