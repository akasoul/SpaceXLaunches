//
//  TableOfLaunchesModel.swift
//  SpaceXLaunches
//
//  Created by Anton Voloshuk on 19.07.2021.
//

import Foundation

protocol TableOfLaunchesListener: class{
    func update()
}

class TableOfLaunchesModel{
    weak var listener: TableOfLaunchesListener?
    private var data = [ResponseElement](){
        didSet{
            self.listener?.update()
        }
    }
    
    init() {
        self.requestData()
    }
    
    func requestData(){
        print("data request")
        guard let url = URL(string: "https://api.spacexdata.com/v3/launches")
        else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ data,response,error in
            guard let data = data
            else{
                return
            }
            
            var decoded: [ResponseElement]?
            do{
                try decoded = JSONDecoder().decode([ResponseElement].self, from: data)
            }
            catch{
                print(error)
            }
            self.data=decoded ?? []
        }
        task.resume()
        
    }
    
    func getCount()->Int{
        return self.data.count
    }
    
    func getAt(_ index: Int)->(String,String,String,String)?{
        if(index<self.data.count){
            let launchData=self.data[index]
            return (launchData.links?.missionPatchSmall ?? "",launchData.launchDateUTC ?? "",launchData.rocket?.rocketName ?? "",launchData.rocket?.rocketType ?? "")
        }
        return nil
    }
    
    func getInfoAt(_ index: Int)->URL?{
        if(index<self.data.count){
            let launchData=self.data[index]
            guard let urlString=launchData.links?.articleLink
            else{
                return nil
            }
            guard let url = URL(string: urlString)
            else{
                return nil
            }
            return url
        }
        return nil
    }
}
