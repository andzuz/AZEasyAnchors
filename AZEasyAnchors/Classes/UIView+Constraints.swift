import UIKit

public enum ConstraintType {
    case top
    case trailing
    case leading
    case bottom
    case width
    case height
    case centerX
    case centerY
}

public extension UIView {
    
    public func fillView(view: UIView) -> [ConstraintType: NSLayoutConstraint] {
        return position(top: view.topAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor, leading: view.leadingAnchor)
    }
    
    public func position(top: NSLayoutYAxisAnchor? = nil, topConstant: CGFloat = 0, trailing: NSLayoutXAxisAnchor? = nil, trailingConstant: CGFloat = 0, bottom: NSLayoutYAxisAnchor? = nil, bottomConstant: CGFloat = 0, leading: NSLayoutXAxisAnchor? = nil, leadingConstant: CGFloat = 0) -> [ConstraintType: NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [ConstraintType: NSLayoutConstraint] = [:]
        
        if let top = top {
            let topConstraint = topAnchor.constraint(equalTo: top, constant: topConstant)
            topConstraint.isActive = true
            constraints[.top] = topConstraint
        }
        
        if let trailing = trailing {
            let trailingConstraint = trailingAnchor.constraint(equalTo: trailing, constant: -trailingConstant)
            trailingConstraint.isActive = true
            constraints[.trailing] = trailingConstraint
        }
        
        if let leading = leading {
            let leadingConstraint = leadingAnchor.constraint(equalTo: leading, constant: leadingConstant)
            leadingConstraint.isActive = true
            constraints[.leading] = leadingConstraint
        }
        
        if let bottom = bottom {
            let bottomConstraint = bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant)
            bottomConstraint.isActive = true
            constraints[.bottom] = bottomConstraint
        }
        
        return constraints
    }
    
    public func size(heightConstant: CGFloat? = nil, widthConstant: CGFloat? = nil) -> [ConstraintType: NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [ConstraintType: NSLayoutConstraint] = [:]
        
        if let heightConstant = heightConstant {
            let heightConstraint = heightAnchor.constraint(equalToConstant: heightConstant)
            heightConstraint.isActive = true
            constraints[.height] = heightConstraint
        }
        
        if let widthConstant = widthConstant {
            let widthConstraint = widthAnchor.constraint(equalToConstant: widthConstant)
            widthConstraint.isActive = true
            constraints[.width] = widthConstraint
        }
        
        return constraints
    }
    
    public func sizeRelative(heightTo: UIView? = nil, heightMultiplier: CGFloat = 0, widthTo: UIView? = nil, widthMultiplier: CGFloat = 0) -> [ConstraintType: NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [ConstraintType: NSLayoutConstraint] = [:]
        
        if let heightTo = heightTo {
            let heightConstraint = heightAnchor.constraint(equalTo: heightTo.heightAnchor, multiplier: heightMultiplier)
            heightConstraint.isActive = true
            constraints[.height] = heightConstraint
        }
        
        if let widthTo = widthTo {
            let widthConstraint = widthAnchor.constraint(equalTo: widthTo.widthAnchor, multiplier: widthMultiplier)
            widthConstraint.isActive = true
            constraints[.width] = widthConstraint
        }
        
        return constraints
    }
    
    public func centerX(toView: UIView? = nil) -> [ConstraintType: NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [ConstraintType: NSLayoutConstraint] = [:]
        
        if let toView = toView {
            let centerXConstraint = centerXAnchor.constraint(equalTo: toView.centerXAnchor)
            centerXConstraint.isActive = true
            constraints[.centerX] = centerXConstraint
        }
        
        return constraints
    }
    
    public func centerY(toView: UIView? = nil) -> [ConstraintType: NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [ConstraintType: NSLayoutConstraint] = [:]
        
        if let toView = toView {
            let centerYConstraint = centerYAnchor.constraint(equalTo: toView.centerYAnchor)
            centerYConstraint.isActive = true
            constraints[.centerY] = centerYConstraint
        }
        
        return constraints
    }
    
    public func center(toView: UIView? = nil) -> [ConstraintType: NSLayoutConstraint]? {
        if let toView = toView {
            let centerXConstraints = centerX(toView: toView)
            let centerYConstraints = centerY(toView: toView)
            return centerXConstraints.merging(centerYConstraints) { (_, new) in new }
        }
        
        return nil
    }
    
}

