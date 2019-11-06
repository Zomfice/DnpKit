
DnpKit is a auxiliary tool to improve your efficiency Of Coding on iOS.

## Requirements

* iOS 9.0+
* Xcode 10.0+
* Swift 4.0+

## Installation

#### CocoaPods

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'DnpKit'
end
```

Run the following command:

```
$ pod install
```

## Usage

#### Quick Start

##### UILabel:

```
import DnpKit

class ViewController: UIViewController{

	    override func viewDidLoad() {
        super.viewDidLoad()
        
        UILabel().dnp
            .text("Text")
            .textColor(UIColor.black)
            .font(15)
            .numberOfLines(1)
            .addToSuperView(self.view)
            .makeSnapKit { (make) in
                make.left.top.equalToSuperview()
            }
            .object
            
       }

}
```

##### UIButton:

```
class ViewController: UIViewController{
	override func viewDidLoad() {

        UIButton(type: .custom).dnp
            .title("Button", .normal)
            .image(UIImage(named: "Image")!, .normal)
            .titleFont(14)
            .tintColor(UIColor.gray)
            .addToSuperView(self.view)
            .makeSnapKit({ (make) in
                make.width.height.equalTo(40)
                make.top.left.equalToSuperview()
            })
            .addTarget(self, #selector(buttonClick(sender:)), .touchUpInside)
            .object

    }
}

```

##### UITableView:

```
class ViewController: UIViewController{
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain).dnp
            .dataSource(self)
            .delegate(self)
            //.contentInsetAdjustmentBehavior(.never)
            .adJustedContentIOS11()
            .estimatedRowHeight(70)
            .estimatedSectionFooterHeight(0)
            .estimatedSectionHeaderHeight(0)
            .showsVerticalScrollIndicator(false)
            .separatorStyle(.singleLine)
            .backgroundColor(UIColor.cyan)
            .backgroundView(UIView())
            .addToSuperView(self.view)
            .register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
            .object
        return tableView
    }()
    
}
```

##### UIView: 

```
class ViewController: UIViewController{
	override func viewDidLoad() {

        UIView().dnp
            .frame(15, 88, UIScreen.main.bounds.width, 60)
            .backgroundColor(UIColor.cyan)
            .cornerRadius(10)
            .addSubView(self.view)
            .addGesture(UIGestureRecognizer())
            .makeSnapKit { (make) in
                make.edges.equalToSuperview()
        	}

    }
}
```
