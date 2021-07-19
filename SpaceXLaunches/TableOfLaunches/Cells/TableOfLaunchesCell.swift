//
//  TableOfLaunchesCell.swift
//  SpaceXLaunches
//
//  Created by Anton Voloshuk on 19.07.2021.
//

import Foundation
import UIKit

class TableOfLaunchesCell: UITableViewCell{
    private let img = UIImageView()
    let launchDate = UILabel()
    let rocketType = UILabel()
    let rocketName = UILabel()
    var imgURL=""{
        didSet{
            guard let url = URL(string: self.imgURL)
            else{
                return
            }
            let imgLoadTask=URLSession.shared.dataTask(with: url){ data,response,error in
                guard let data = data
                else{
                    return
                }
                if let img = UIImage(data: data){
                    DispatchQueue.main.async{
                        self.img.image = img
                    }
                }
            }
            imgLoadTask.resume()
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.img.translatesAutoresizingMaskIntoConstraints=false
        self.launchDate.translatesAutoresizingMaskIntoConstraints=false
        self.rocketType.translatesAutoresizingMaskIntoConstraints=false
        self.rocketName.translatesAutoresizingMaskIntoConstraints=false
        
        self.contentView.addSubview(self.img)
        self.contentView.addSubview(self.launchDate)
        self.contentView.addSubview(self.rocketType)
        self.contentView.addSubview(self.rocketName)
        
        NSLayoutConstraint(item: self.img, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 5).isActive=true
        NSLayoutConstraint(item: self.img, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 5).isActive=true
        NSLayoutConstraint(item: self.img, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -5).isActive=true
        NSLayoutConstraint(item: self.img, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 70).isActive=true
        
        
        NSLayoutConstraint(item: self.launchDate, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.img, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 10).isActive=true
        NSLayoutConstraint(item: self.launchDate, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 5).isActive=true
        NSLayoutConstraint(item: self.launchDate, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 500).isActive=true
        
        NSLayoutConstraint(item: self.rocketName, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.img, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 10).isActive=true
        NSLayoutConstraint(item: self.rocketName, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.launchDate, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 5).isActive=true
        NSLayoutConstraint(item: self.rocketName, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 500).isActive=true
        
        NSLayoutConstraint(item: self.rocketType, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.img, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 10).isActive=true
        NSLayoutConstraint(item: self.rocketType, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.rocketName, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 5).isActive=true
        NSLayoutConstraint(item: self.rocketType, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 500).isActive=true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(imgURL:String,launchDate:String,rocketName: String,rocketType:String){
        self.imgURL=imgURL
        
        //        self.launchDate.text="Launch date: "+launchDate
        //        self.rocketName.text="Rocket name: "+rocketName
        //        self.rocketType.text="Rocket type: "+rocketType
        
        self.launchDate.text=launchDate
        self.rocketName.text=rocketName
        self.rocketType.text=rocketType
        
        let dateFormatter=DateFormatter()
        if let date = dateFormatter.date(from: launchDate){
            dateFormatter.timeStyle = .short
            dateFormatter.dateStyle = .short
            let fmtDate = dateFormatter.string(from: date)
            self.launchDate.text=fmtDate
        }
        
    }
}
