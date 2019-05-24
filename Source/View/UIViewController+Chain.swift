//
//  UIViewController+Chain.swift
//  DnpKit
//
//  Created by Zomfice on 2019/5/24.
//  Copyright © 2019 Zomfice. All rights reserved.
//

public extension DnpChain where ObjectType: UIViewController {
    
    @discardableResult
    func view(_ view: UIView!) -> DnpChain {
        self.chain.view = view
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor?) -> DnpChain {
        self.chain.view.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func tabBarItem(_ tabBarItem: UITabBarItem!) -> DnpChain {
        self.chain.tabBarItem = tabBarItem
        return self
    }
    
    @discardableResult
    func tabBarController() -> UITabBarController? {
        return self.chain.tabBarController
    }
    
    @discardableResult
    func loadView() -> DnpChain {
        self.chain.loadView()
        return self
    }
    
    @discardableResult
    @available(iOS 9.0, *)
    func loadViewIfNeeded() -> DnpChain {
        self.chain.loadViewIfNeeded()
        return self
    }
    
    //viewIfLoaded
    //viewDidLoad
    //isViewLoaded
    //nibName
    //nibBundle
    //storyboard
    
    @discardableResult
    @available(iOS 5.0, *)
    func performSegue(withIdentifier identifier: String, sender: Any?) -> DnpChain {
        self.chain.performSegue(withIdentifier: identifier, sender: sender)
        return self
    }
    
    @discardableResult
    @available(iOS 6.0, *)
    func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return self.chain.shouldPerformSegue(withIdentifier: identifier, sender: sender)
    }
    
    @discardableResult
    @available(iOS 5.0, *)
    func prepare(for segue: UIStoryboardSegue, sender: Any?) -> DnpChain {
        self.chain.prepare(for: segue, sender: sender)
        return self
    }
    
    //canPerformUnwindSegueAction
    
    //allowedChildrenForUnwinding
    
    //childContaining
    
    //forUnwindSegueAction
    
    @discardableResult
    @available(iOS 9.0, *)
    func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) -> DnpChain {
        self.chain.unwind(for: unwindSegue, towards: subsequentVC)
        return self
    }
    
    //segueForUnwinding
    
    @discardableResult
    func viewWillAppear(_ animated: Bool) -> DnpChain {
        self.chain.viewWillAppear(animated)
        return self
    }
    
    @discardableResult
    func viewDidAppear(_ animated: Bool) -> DnpChain {
        self.chain.viewDidAppear(animated)
        return self
    }
    
    @discardableResult
    func viewWillDisappear(_ animated: Bool) -> DnpChain {
        self.chain.viewWillDisappear(animated)
        return self
    }
    
    @discardableResult
    func viewDidDisappear(_ animated: Bool) -> DnpChain {
        self.chain.viewDidDisappear(animated)
        return self
    }
    
    @discardableResult
    func viewWillLayoutSubviews() -> DnpChain {
        self.chain.viewWillLayoutSubviews()
        return self
    }
    
    @discardableResult
    func viewDidLayoutSubviews() -> DnpChain {
        self.chain.viewDidLayoutSubviews()
        return self
    }
    
    @discardableResult
    func title(_ title: String?) -> DnpChain {
        self.chain.title = title
        return self
    }
    
    //didReceiveMemoryWarning
    
    @discardableResult
    func definesPresentationContext(_ definesPresentationContext: Bool) -> DnpChain {
        self.chain.definesPresentationContext = definesPresentationContext
        return self
    }
    
    @discardableResult
    func providesPresentationContextTransitionStyle(_ providesPresentationContextTransitionStyle: Bool) -> DnpChain {
        self.chain.providesPresentationContextTransitionStyle = providesPresentationContextTransitionStyle
        return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func restoresFocusAfterTransition(_ restoresFocusAfterTransition: Bool) -> DnpChain {
        self.chain.restoresFocusAfterTransition = restoresFocusAfterTransition
        return self
    }
    
    @discardableResult
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) -> DnpChain {
        self.chain.present(viewControllerToPresent, animated: flag, completion: completion)
        return self
    }
    
    @discardableResult
    func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) -> DnpChain {
        self.chain.dismiss(animated: flag, completion: completion)
        return self
    }
    
    @discardableResult
    func modalTransitionStyle(_ modalTransitionStyle: UIModalTransitionStyle) -> DnpChain {
        self.chain.modalTransitionStyle = modalTransitionStyle
        return self
    }
    
    @discardableResult
    func modalPresentationStyle(_ modalPresentationStyle: UIModalPresentationStyle) -> DnpChain {
        self.chain.modalPresentationStyle = modalPresentationStyle
        return self
    }
    
    @discardableResult
    func modalPresentationCapturesStatusBarAppearance(_ modalPresentationCapturesStatusBarAppearance: Bool) -> DnpChain {
        self.chain.modalPresentationCapturesStatusBarAppearance = modalPresentationCapturesStatusBarAppearance
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func edgesForExtendedLayout(_ edgesForExtendedLayout: UIRectEdge) -> DnpChain {
        self.chain.edgesForExtendedLayout = edgesForExtendedLayout
        return self
    }
    
    @discardableResult
    @available(iOS 7.0, *)
    func extendedLayoutIncludesOpaqueBars(_ extendedLayoutIncludesOpaqueBars: Bool) -> DnpChain {
        self.chain.extendedLayoutIncludesOpaqueBars = extendedLayoutIncludesOpaqueBars
        return self
    }
    
    @discardableResult
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
    func automaticallyAdjustsScrollViewInsets(_ automaticallyAdjustsScrollViewInsets: Bool) -> DnpChain {
        self.chain.automaticallyAdjustsScrollViewInsets = automaticallyAdjustsScrollViewInsets
        return self
    }
    
    @discardableResult
    func preferredContentSize(_ preferredContentSize: CGSize) -> DnpChain {
        self.chain.preferredContentSize = preferredContentSize
        return self
    }
    
    @discardableResult
    func setNeedsStatusBarAppearanceUpdate() -> DnpChain {
        self.chain.setNeedsStatusBarAppearanceUpdate()
        return self
    }
    
    @discardableResult
    @available(iOS 8.0, *)
    func show(_ vc: UIViewController, sender: Any?) -> DnpChain {
        self.chain.show(vc, sender: sender)
        return self
    }
    
    @discardableResult
    @available(iOS 8.0, *)
    func showDetailViewController(_ vc: UIViewController, sender: Any?) -> DnpChain {
        self.chain.showDetailViewController(vc, sender: sender)
        return self
    }
    
    
}
