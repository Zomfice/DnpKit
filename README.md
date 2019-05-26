
DnpKit is a auxiliary tool to improve your efficiency Of Coding on iOS.

## Requirements

* iOS 9.0+
* Xcode 10.0+
* Swift 4.0+

## Installation

#### CocoaPods

`Vim Podfile:`

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

## Contents

* `UILabel().dnp` 创建对象调用dnp,通过`dnp`调用系统属性,函数,实现链式编程
* `let label = UILabel().dnp.object` 在链式的最后通过`.object`获取创建的对象,可再通过`label`调用系统的属性,函数,也可以再次`label.dnp`进行链式
* `assignTo`以闭包的传递当前对象
* 调用`Frame` `CGPoint` `CGSize` `CGRect`等函数可省略实参标签,例:`self.view.dnp.frame(10, 10, 10, 10)`
* `self.view.dnp.addSubView` 添加子视图到当前对象
* `self.view.dnp.addToSuperView` 将当前对象添加到父视图
* `self.view.dnp.addGesture` 添加手势
* `UIButton().dnp.addTarget` 添加事件
* `self.view.dnp.makeSnapKit` 进行SnapKit布局
* 建议以如下的格式写链式语法,你可以随意的添加,修改,注释一行的代码,使你的代码更具灵活性

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
