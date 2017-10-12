//
//  customcell.swift
//  mycell
//
//  Created by venkatagovardhan on 8/30/17.
//  Copyright © 2017 venkatagovardhan. All rights reserved.
//

import Foundation
import UIKit

public class CustomCell: UITableViewCell {
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Sate Name"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let arealabel: UILabel = {
        let label = UILabel()
        label.text = "Area    1723337SKM"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let largestCityLabel: UILabel = {
        let label = UILabel()
        label.text = "LargestCity  Anchorage"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let capitalLabel: UILabel = {
        let label = UILabel()
        label.text = "Capital    Juneau"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public func AreaLabelText(_ textString: String){
        arealabel.text = "Area    \(textString)"
    }
    public func LargestCityLabelText(_ textString: String){
        largestCityLabel.text = "Largest City  \(textString)"
    }
    public func CapitalLabelText(_ textString: String){
        capitalLabel.text = "Capital    \(textString)"
    }
    public func NameLabelText(_ textString: String){
        nameLabel.text = textString.uppercased()
    }
    
    func setupViews(){
        addSubview(nameLabel)
        addSubview(arealabel)
        addSubview(largestCityLabel)
        addSubview(capitalLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v1": arealabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v2]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v2": largestCityLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v3]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v3": capitalLabel]))
        
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[v0]-[v1]-[v2]-[v3]-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel,"v1": arealabel,"v2": largestCityLabel, "v3": capitalLabel]))
        
    }
}
