//
//  ViewController.swift
//  WeStand
//
//  Created by Emmanuel Okwara on 18/10/2020.
//  Copyright © 2020 Macco. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setImage()
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        guard currentIndex > 0 else { return }
        currentIndex -= 1
        setImage()
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        guard currentIndex < galleryImageUrls.count - 1 else { return }
        currentIndex += 1
        setImage()
    }
    
    private func setImage() {
        imageView.kf.setImage(with: URL(string: galleryImageUrls[currentIndex]))
        imageView.kf.indicatorType = .activity
    }
    
}









let galleryImageUrls = [
    "https://res.cloudinary.com/dn4pokov0/image/upload/v1602970696/PHOTO-2020-10-17-22-13-25.jpg",
    "https://i2.wp.com/www.vanguardngr.com/wp-content/uploads/2020/10/Ej6ZLo1XgAAXru9.jpg?resize=599%2C315&ssl=1",
    "https://guardian.ng/wp-content/uploads/2020/10/EndSARs-2-scaled-e1602839858199.jpg",
    "https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2020/10/Aisha-Yesufu-EndSARS.jpeg?fit=1024%2C682&ssl=1",
    "https://nairametrics.com/wp-content/uploads/2020/10/EndSARS-2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSxXx-m5vW35YDIrrdlwL9TlUt_xtPzJg8DfA&usqp=CAU",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thecable.ng%2Fhustlers-have-taken-over-endsars-movement&psig=AOvVaw1sRNbel6o18UR_SbinYL3c&ust=1603055164034000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLD07YLEvOwCFQAAAAAdAAAAABAs",
    "https://nairametrics.com/wp-content/uploads/2020/10/EndSARS-4.png",
    "https://p3y6v9e6.stackpathcdn.com/wp-content/uploads/zikoko/2020/10/END-SARS.jpeg",
    "https://guardian.ng/wp-content/uploads/2020/10/EjzYRSnXcAA_0Gk-1062x596.jpg",
    "https://adamstart.com/wp-content/uploads/2020/10/EndSARS.jpg",
    "https://www.independent.ng/wp-content/uploads/ENDSARS-2.jpg",
    "https://nairametrics.com/wp-content/uploads/2020/10/Naija-.jpg",
    "https://cdn.punchng.com/wp-content/uploads/2020/10/14031216/EndSARS-protest-Lagos.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/AishaYesufu_on_EndSARS_Protest_Abuja.jpg/220px-AishaYesufu_on_EndSARS_Protest_Abuja.jpg",
    
    "https://africanarguments.org/wp-content/uploads/2020/10/20201015_141916.jpg",
    "https://static.highsnobiety.com/thumbor/7dU3JMUmJJajalCMD0zK13BGp1k=/1200x720/static.highsnobiety.com/wp-content/uploads/2020/10/11143054/endsars-police-brutality-nigeria-feat.jpg",
    "https://mttwblog.files.wordpress.com/2018/08/segalink-1062x598.jpg?w=1062",
    "https://businessday.ng/wp-content/uploads/2020/10/ENDSARS-protesters-in-Abuja.jpg",
    "https://cdn.punchng.com/wp-content/uploads/2020/10/16214004/Endsars-candle-light.jpg",
    
    
]
