// Playing with VFL

import UIKit
import PlaygroundSupport


class FacePart : UIView
{
    init(color:UIColor)
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        backgroundColor = color
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
}

let parentView = UIView()
parentView.frame.size = CGSize(width: 300, height: 400)
parentView.backgroundColor = .blue

// Note: .red is Implicit Member Expression
let redView = FacePart(color: .red)
parentView.addSubview(redView)

let yellowView = FacePart(color: .yellow)
parentView.addSubview(yellowView)

let eyeView1 = FacePart(color: .black)
redView.addSubview(eyeView1)

let eyeView2 = FacePart(color: .black)
redView.addSubview(eyeView2)

let noseView = FacePart(color: .black)
yellowView.addSubview(noseView)

let lipsView = FacePart(color: .purple)
yellowView.addSubview(lipsView)

let views = [
    "redView"    : redView,
    "yellowView" : yellowView,
    "eyeView1"   : eyeView1,
    "eyeView2"   : eyeView2,
    "noseView"   : noseView,
    "lipsView"   : lipsView
]

let formatStr1 = "H:|-20-[redView]-20-|"
let formatStr2 = "V:|-20-[redView(75)]-10-[yellowView]-20-|"
let formatStr3 = "H:|-20-[yellowView]-20-|"

let formatStr4 = "H:|-10-[eyeView1(55)]"
let formatStr5 = "V:|-10-[eyeView1(55)]"
let formatStr6 = "V:|-10-[eyeView2(==eyeView1)]"
let formatStr7 = "H:[eyeView2(==eyeView1)]-10-|"

//let's skip using the name formatStr8
let formatStr9  = "H:|-100-[noseView]-100-|"
let formatStr10 = "V:|-10-[noseView]"

let formatStr11 = "V:[noseView]-40-[lipsView]-10-|"
let formatStr12 = "H:|-10-[lipsView]-10-|"

let constraints1 = NSLayoutConstraint.constraints(withVisualFormat: formatStr1, options: [], metrics: nil, views: views)
let constraints2 = NSLayoutConstraint.constraints(withVisualFormat: formatStr2, options: [], metrics: nil, views: views)
let constraints3 = NSLayoutConstraint.constraints(withVisualFormat: formatStr3, options: [], metrics: nil, views: views)
let constraints4 = NSLayoutConstraint.constraints(withVisualFormat: formatStr4, options: [], metrics: nil, views: views)
let constraints5 = NSLayoutConstraint.constraints(withVisualFormat: formatStr5, options: [], metrics: nil, views: views)
let constraints6 = NSLayoutConstraint.constraints(withVisualFormat: formatStr6, options: [], metrics: nil, views: views)
let constraints7 = NSLayoutConstraint.constraints(withVisualFormat: formatStr7, options: [], metrics: nil, views: views)

let constraints8 = NSLayoutConstraint(item:noseView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: yellowView, attribute: NSLayoutAttribute.height, multiplier: 0.65, constant: 0)

let constraints9 = NSLayoutConstraint.constraints(withVisualFormat: formatStr9, options: [], metrics: nil, views: views)
let constraints10 = NSLayoutConstraint.constraints(withVisualFormat: formatStr10, options: [], metrics: nil, views: views)

let constraints11 = NSLayoutConstraint.constraints(withVisualFormat: formatStr11, options: [], metrics: nil, views: views)
let constraints12 = NSLayoutConstraint.constraints(withVisualFormat: formatStr12, options: [], metrics: nil, views: views)

NSLayoutConstraint.activate(constraints1)
NSLayoutConstraint.activate(constraints2)
NSLayoutConstraint.activate(constraints3)
NSLayoutConstraint.activate(constraints4)
NSLayoutConstraint.activate(constraints5)
NSLayoutConstraint.activate(constraints6)
NSLayoutConstraint.activate(constraints7)
NSLayoutConstraint.activate([constraints8])
NSLayoutConstraint.activate(constraints9)
NSLayoutConstraint.activate(constraints10)
NSLayoutConstraint.activate(constraints11)
NSLayoutConstraint.activate(constraints12)

PlaygroundPage.current.liveView = parentView

