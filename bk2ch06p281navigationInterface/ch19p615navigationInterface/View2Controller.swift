
import UIKit

class View2Controller : UIViewController {
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "Second"
        // whoa, check this out: the image comes right out of the asset catalog as a template image!
        let b = UIBarButtonItem(image: UIImage(named:"files.png"), style: .plain, target: nil, action: nil)
        // can have both left bar buttons and back bar button
        self.navigationItem.leftBarButtonItem = b
        self.navigationItem.leftItemsSupplementBackButton = true
    }
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = .red // just so we know we're here
    }
    
    // with a back button, we get "pop" for free, both by tapping the button...
    // and interactively by dragging from the left edge
    
    // this looks like a bug: we are not getting light content
    
//    override var preferredStatusBarStyle : UIStatusBarStyle {
//        return .LightContent
//    }
    
//    override var prefersStatusBarHidden : Bool {
//        return false
//    }

    
}
