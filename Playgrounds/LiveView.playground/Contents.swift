//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class CaptionView: UIView {
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .yellow
        return iv
    }()
    
    lazy var captionLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Caption"
        return lbl
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds.applying(CGAffineTransform.init(scaleX: 0.3, y: 0.3)))
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.backgroundColor = .blue
        setupViews()
    }
    
    func setupViews() {
        setImageView()
        setCaptionLabel()
        setSubmitButton()
    }
    
    func setImageView() {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
    }
    
    func setCaptionLabel() {
        self.addSubview(captionLabel)
        captionLabel.translatesAutoresizingMaskIntoConstraints = false
        captionLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        captionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setSubmitButton() {
        self.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        submitButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
    }
}

let captionView = CaptionView()

PlaygroundPage.current.liveView = captionView
