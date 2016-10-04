//
//  KFDemoTableViewController.swift
//  KFDemo
//
//  Created by Stephen Payne on 10/4/16.
//  Copyright © 2016 Stephen Payne. All rights reserved.
//

import UIKit
import Kingfisher


class KFDemoTableViewController: UITableViewController {
    
    private var images = [URL]()
    private var strings = [
        "https://avatars1.githubusercontent.com/u/1455368?v=3&s=466",
        "https://avatars0.githubusercontent.com/u/1379681?v=3&s=466",
        "https://www.specialtyproduce.com/sppics/914.png",
        "https://www.whitehouse.gov/sites/whitehouse.gov/files/tout_images/potus_phone_tout.jpg",
        "https://www.newyorker.com/wp-content/uploads/2015/11/Cassidy-Bernie-Sanders-Loud-and-Clear-1200.jpg",
        "https://i.ytimg.com/vi/q7o7R5BgWDY/maxresdefault.jpg",
        "https://engagemobile.com/wp-content/uploads/2014/10/Google-Logo.png",
        "https://allthingslearning.files.wordpress.com/2012/03/twitter-bird-announce.jpg?w=604&h=594",
        "https://filmgarb.com/wp-content/uploads/tv-silicon_valley-2014_-erlich-tj_miller-tshirts-s01e01-i_know_html_tshirt_01.jpg",
        "https://67.media.tumblr.com/fd57d75350c2212337e934280e074dac/tumblr_inline_o41rj3fHnf1r8mwrd_1280.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/6/66/Woodward_Ave_Detroit_1942.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/4/4c/Toronto_-_ON_-_Skyline_bei_Nacht.jpg",
        "https://c1.staticflickr.com/1/68/212762183_e5b9c3816a.jpg",
        "https://thechive.files.wordpress.com/2012/06/funny-pun-photos-17.jpg?w=500",
        "https://i.ytimg.com/vi/q7o7R5BgWDY/maxresdefault.jpg",
        "https://media.bizj.us/view/img/5882151/whichwichtbrcombo*750xx1286-723-0-112.jpg",
        "https://media.gq.com/photos/566f53b622c04e90668117ae/master/pass/Swerves-of-2015-drake-hotline-bling.jpg",
        "https://images-eu.ssl-images-amazon.com/images/G/31/img15/Shoes/CatNav/k._V293117556_.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureImageArray()
    }

    func configureImageArray() {
        
        for s in strings {
            if let newURL = URL(string: s) {
                images.append(newURL)
            }
        }
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return images.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageCell
        
        cell.configureCell(withImageURL: images[indexPath.row] )

        return cell
    }
}

public class ImageCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    func configureCell(withImageURL: URL) {
        cellImageView.kf.setImage(with: withImageURL)
    }
    
}
