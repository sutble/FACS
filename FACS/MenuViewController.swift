//
//  MenuViewController.swift
//  FACS
//
//  Created by Aditya Garg on 8/15/17.
//  Copyright © 2017 garg. All rights reserved.
//

import Foundation
import UIKit

var masterList = [[AU]]()
var masterSection = 0
var masterRow = 0




class MenuViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let section = ["Terminology","Upper Face", "Up Down", "Horizontal", "Oblique", "Orbital"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        tableView.autoresizingMask = .flexibleWidth
        setupData()
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return self.section.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return masterList[section].count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = masterList[indexPath.section][indexPath.row].name

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        masterSection = indexPath.section
        masterRow = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
  
    
    func setupData(){
        masterList = [CH1(),CH2(), CH4(), CH5(), CH6(), CH7()]
    }
    
    func CH1() -> [AU]{
        
        var ch1 = [AU]()
        var name = "Chart"
        var picArray = [String]()
        var vidArray = [String]()
        let chart = AU(name: name, pdf: "Ch1_Chart", pictures: picArray, videos: vidArray)
        ch1.append(chart)
        
        name = "Examples"
        picArray = []
        vidArray = []
        let examples = AU(name: name, pdf: "Ch1_Examples", pictures: picArray, videos: vidArray)
        ch1.append(examples)
        
        return ch1
    }
    
    func CH2() -> [AU] {
       
        var ch2 = [AU]()
        
        var name = "Muscles"
        var picArray = [String]()
        var vidArray = [String]()
        let muscles = AU(name: name, pdf: "Ch2_Muscles", pictures: picArray, videos: vidArray)
        ch2.append(muscles)
        
        name = "Subtle Differences"
        picArray = []
        vidArray = []
        let SD = AU(name: name, pdf: "Ch2_SD", pictures: picArray, videos: vidArray)
        ch2.append(SD)
        
        name = "AU 1"
        picArray = ["s0","s1","s1_2","s1_2_4a","s1_2_4b","s1_2_5x","s1_2_5z","s1_4a","s1_4b"]
        vidArray = ["AU1","AU1_2","AU1_4","AU1_2_4","AU1_2_5"]
        let au1 = AU(name: name, pdf: "AU1", pictures: picArray, videos: vidArray)
        ch2.append(au1)
        
        name = "AU 2"
        picArray = ["s0","s2","s1_2","s1_2_4a","s1_2_4b","s1_2_5x","s1_2_5z"]
        vidArray = ["AU2","AU1_2","AU1_2_4","AU1_2_5"]
        let au2 = AU(name: name, pdf: "AU2", pictures: picArray, videos: vidArray)
        ch2.append(au2)
        
        name = "AU 4"
        picArray = ["s0","s4a","s4b","s1_2_4a","s4_5x","s6_4","s1_4a","s1_4b"]
        vidArray = ["AU4","AU4_5","AU1_4","AU1_2_4"]
        let au4 = AU(name: name, pdf: "AU4", pictures: picArray, videos: vidArray)
        ch2.append(au4)
        
        name = "AU 5"
        picArray = ["s0","s5x","s5z","s4_5x","s5y_7","s1_2_5x","s1_2_5z"]
        vidArray = ["AU5","AU4_5","AU5_7","AU1_2_5"]
        let au5 = AU(name: name, pdf: "AU5", pictures: picArray, videos: vidArray)
        ch2.append(au5)
        
        name = "AU 6"
        picArray = ["s0","s6","s6_15x","s6_15z","s6_15z17","s6_13a","s6_13b","s6_4","s6_12x","s6_12y15","s6_12y17","s6_12y23","s6_12y24","s6_12y25","s6_12z","s6_12z17","s6_12z25","s6_12z26","s6_12z27","s6_43"]
        vidArray = ["AU6","AU6_12B", "AU6_15","AU6_7_43","AU6only","AU6_7","AU6_12o"]
        let au6 = AU(name: name, pdf: "AU6", pictures: picArray, videos: vidArray)
        ch2.append(au6)
        
        name = "AU 7"
        picArray = ["s0","s7","s7_43"]
        vidArray = ["AU7","AU7only","AU5_7","AU6_7","AU6_7_43","AU7_12o"]
        let au7 = AU(name: name, pdf: "AU7", pictures: picArray, videos: vidArray)
        ch2.append(au7)
        
        name = "AU 43"
        picArray = ["s0", "s43", "s6_43", "s7_43"]
        vidArray = ["AU6_7_43"]
        let au43 = AU(name: name, pdf: "AU43", pictures: picArray, videos: vidArray)
        ch2.append(au43)
        
        name = "AU 45"
        picArray = []
        vidArray = []
        let au45 = AU(name: name, pdf: "AU45", pictures: picArray, videos: vidArray)
        ch2.append(au45)
        
        name = "AU 46"
        picArray = []
        vidArray = []
        let au46 = AU(name: name, pdf: "AU46", pictures: picArray, videos: vidArray)
        ch2.append(au46)
        
        name = "AU 4+5"
        picArray = ["s0","s4_5x"]
        vidArray = ["AU4_5"]
        let au4_5 = AU(name: name, pdf: "AU4_5", pictures: picArray, videos: vidArray)
        ch2.append(au4_5)
        
        name = "AU 5+7"
        picArray = ["s0","s5y_7"]
        vidArray = ["AU5_7"]
        let au5_7 = AU(name: name, pdf: "AU5_7", pictures: picArray, videos: vidArray)
        ch2.append(au5_7)
        
        name = "AU 1+4"
        picArray = ["s0","s1_4a", "s1_4b","SJ0", "SJ1_4"]
        vidArray = ["AU1_4"]
        let au1_4 = AU(name: name, pdf: "AU1_4", pictures: picArray, videos: vidArray)
        ch2.append(au1_4)
        
        name = "AU 1+2+4"
        picArray = ["s0","s1_2_4a", "s1_2_4b","SJ0", "SJ1_2_4"]
        vidArray = ["AU1_2_4"]
        let au1_2_4 = AU(name: name, pdf: "AU1_2_4", pictures: picArray, videos: vidArray)
        ch2.append(au1_2_4)
        
        name = "AU 1+2+5"
        picArray = ["s0","s1_2_5x", "s1_2_5z"]
        vidArray = ["AU1_2_5"]
        let au1_2_5 = AU(name: name, pdf: "AU1_2_5", pictures: picArray, videos: vidArray)
        ch2.append(au1_2_5)
        
        name = "AU 6+43E, 7+43E"
        picArray = ["s0", "s43", "s6_43", "s7_43"]
        vidArray = ["AU6_7_43"]
        let au67_43 = AU(name: name, pdf: "AU67_43", pictures: picArray, videos: vidArray)
        ch2.append(au67_43)

        return ch2
    }
    
    func CH4() -> [AU]{
        var ch4 = [AU]()
        
        var name = "Muscles"
        var picArray = [String]()
        var vidArray = [String]()
        let muscles = AU(name: name, pdf: "Ch4_Muscles", pictures: picArray, videos: vidArray)
        ch4.append(muscles)
        
        name = "Subtle Differences"
        picArray = []
        vidArray = []
        let SD = AU(name: name, pdf: "Ch4_SD", pictures: picArray, videos: vidArray)
        ch4.append(SD)
        
        name = "AU 9"
        picArray = ["s0","s9","s9_25", "s9_16_25", "s9_17"]
        vidArray = ["AU9", "AU9_16", "AU9_17"]
        let au9 = AU(name: name, pdf: "AU9", pictures: picArray, videos: vidArray)
        ch4.append(au9)
        
        name = "AU 10"
        picArray = ["s0","s10x", "s10y","s10z_25", "sL10x_25","s10y_14", "s10y_15z", "s10y_17", "s10y_20", "s1012x25", "s1012y25","s10y1625", "s10y1723", "s10y2325","s10z1517"]
        vidArray = ["AU10","AU10_14", "AU10_15", "AU10_16", "AU10_17", "AU101216", "AU101225", "AU101517", "AU101723", "AU102025", "AU102225", "AU102325"]
        let au10 = AU(name: name, pdf: "AU10", pictures: picArray, videos: vidArray)
        ch4.append(au10)
        
        name = "AU 17"
        picArray = ["s0", "s17", "s17_23", "s17_24","s9_17","s10y_17","s12y_17", "s14_17", "s15z_17", "sW17","s10y1723",  "s10z1517",  "s6121517", "s6_12y17", "s6_12z17", "s6_15z17"]
        vidArray = ["AU101517", "AU101723", "AU10_17", "AU121517", "AU121723", "AU12_17", "AU14_17", "AU151723", "AU15_17", "AU17", "AU17_23", "AU17_24", "AU9_17"]
        let au17 = AU(name: name, pdf: "AU17", pictures: picArray, videos: vidArray)
        ch4.append(au17)
        
        
        name = "AU 15"
        picArray = ["s0", "s15x", "s15y_23", "s15z", "s15z_17","s10y_15z", "s10z1517", "s6121517", "s612x15x", "s612y151", "s612z15y", "s6_12y15", "s6_15x", "s6_15z", "s6_15z17","sW0", "sW15x", "sW15z", "sW6_15x", "sW6_15z"]
        vidArray = ["AU15","AU6_15","AU10_15","AU101517", "AU12_15", "AU121517","AU15_17", "AU151723",  "AU15_23"]
        let au15 = AU(name: name, pdf: "AU15", pictures: picArray, videos: vidArray)
        ch4.append(au15)
        
        name = "AU 25"
        picArray = ["s0", "s1012x25", "s1012y25", "s10y1625", "s10y2325", "s10z_25", "s12x1625", "s12y_25", "s13_25", "s16_25", "s18_25", "s20x2325", "s20x_25", "s20z2325", "s22_2325", "s22_25", "s23_25", "s25", "s6122325", "s6_12y25", "s6_12z25", "s9_16_25", "s9_25", "sL10x_25", "sW16_25"]
        vidArray = ["AU101225", "AU102025", "AU102225", "AU102325", "AU121625", "AU162025", "AU162225", "AU162325", "AU202325", "AU222325", "AU22_25", "AU2526Ee", "AU25A", "AU25A26E", "AU25A27E", "AU25B", "AU25B26E", "AU25B27E", "AU25C", "AU25C26B", "AU25C26E", "AU25C27B", "AU25C27D", "AU25C27E", "AU25D", "AU25D26E", "AU25D27E", "AU25E", "AU25E26E", "AU25E27E"]
        let au25 = AU(name: name, pdf: "AU252627", pictures: picArray, videos: vidArray)
        ch4.append(au25)
        
        name = "AU 26"
        picArray = ["s0", "s12x_26", "s20x_26", "s20y_26", "s23_26", "s26", "s6_12z26", "sL20x_26"]
        vidArray = ["AU12_26", "AU20_26", "AU23_26", "AU2526Ee", "AU25A26E", "AU25B26E", "AU25C26B", "AU25C26E", "AU25D26E", "AU25E26E", "AU26only", "AU8_26"]
        let au26 = AU(name: name, pdf: "AU252627", pictures: picArray, videos: vidArray)
        ch4.append(au26)
        
        name = "AU 27"
        picArray = ["s0", "s20x_27", "s20z_27", "s27", "s6_12z27"]
        vidArray = ["AU12_27", "AU20_27", "AU25A27E", "AU25B27E", "AU25C27B", "AU25C27D", "AU25C27E", "AU25D27E", "AU25E27E", "AU27only"]
        let au27 = AU(name: name, pdf: "AU252627", pictures: picArray, videos: vidArray)
        ch4.append(au27)
        
        name = "AU 16 and 16+25"
        picArray = ["s0","s16_25", "s9_16_25","s10y1625", "s12x1625", "sW16_25"]
        vidArray = ["AU16","AU16ii", "AU9_16","AU10_16","AU101216",  "AU121625", "AU162025", "AU162225", "AU162325"]
        let au16 = AU(name: name, pdf: "AU16", pictures: picArray, videos: vidArray)
        ch4.append(au16)
        
        name = "AU 9+16+25"
        picArray = ["s0", "s9_16_25"]
        vidArray = []
        let au9_16_25 = AU(name: name, pdf: "AU9_16_25", pictures: picArray, videos: vidArray)
        ch4.append(au9_16_25)
        
        name = "AU 10+16+25"
        picArray = ["s0", "s10y1625"]
        vidArray = []
        let au10_16_25 = AU(name: name, pdf: "AU10_16_25", pictures: picArray, videos: vidArray)
        ch4.append(au10_16_25)
        
        name = "AU 9+17"
        picArray = ["s0", "s9_17"]
        vidArray = ["AU9_17"]
        let au9_17 = AU(name: name, pdf: "AU9_17", pictures: picArray, videos: vidArray)
        ch4.append(au9_17)
        
        name = "AU 10+15, 10+17, 15+17, 10+15+17"
        picArray = ["s0", "s10y_15z","s10y1723", "s10y_17","s15z_17", "s6121517", "s6_15z17","s10z1517"]
        vidArray = ["AU101723", "AU10_17", "AU121517", "AU151723", "AU15_17","AU101517"]
        let au10_15_17 = AU(name: name, pdf: "AU10_15_17", pictures: picArray, videos: vidArray)
        ch4.append(au10_15_17)
        
        return ch4
    }
    
    func CH5() -> [AU]{
        
        var ch5 = [AU]()
        
        var name = "Muscles"
        var picArray = [String]()
        var vidArray = [String]()
        let muscles = AU(name: name, pdf: "Ch5_Muscles", pictures: picArray, videos: vidArray)
        ch5.append(muscles)
        
        name = "Subtle Differences"
        picArray = []
        vidArray = []
        let SD = AU(name: name, pdf: "Ch5_SD", pictures: picArray, videos: vidArray)
        ch5.append(SD)
        
        name = "AU 20"
        picArray = ["s0","s20x", "s20z","s20z_27", "s10y_20", "s20x_25", "s20x_26", "s20x_27", "s20y_26","s20x2325",  "s20z2325", "sL20x_26"]
        vidArray = ["AU20","AU20_26", "AU20_27","AU102025", "AU162025",  "AU202325"]
        let au20 = AU(name: name, pdf: "AU20", pictures: picArray, videos: vidArray)
        ch5.append(au20)
        
        name = "AU 14"
        picArray = ["s0","s14","s10y_14", "s14_17", "s14_23", "sL14", "sW14_23"]
        vidArray = ["AU14", "AU10_14",  "AU14_17", "AU14_23"]
        let au14 = AU(name: name, pdf: "AU14", pictures: picArray, videos: vidArray)
        ch5.append(au14)
        
        name = "AU 20+26, 20+27"
        picArray = ["s0", "s20x_26", "s20y_26", "sL20x_26","s20x_27", "s20z_27"]
        vidArray = ["AU20_26", "AU20_27"]
        let au20_2627 = AU(name: name, pdf: "AU20_2627", pictures: picArray, videos: vidArray)
        ch5.append(au20_2627)
        
        name = "AU 10+14"
        picArray = ["s0", "s10y_14"]
        vidArray = ["AU10_14"]
        let au10_14 = AU(name: name, pdf: "AU10_14", pictures: picArray, videos: vidArray)
        ch5.append(au10_14)
        
        name = "AU 14+17"
        picArray = ["s0", "s14_17"]
        vidArray = ["AU14_17"]
        let au14_17 = AU(name: name, pdf: "AU14_17", pictures: picArray, videos: vidArray)
        ch5.append(au14_17)
        
        name = "AU 10+20+25"
        picArray = ["s0"]
        vidArray = ["AU102025"]
        let au10_20_25 = AU(name: name, pdf: "AU10_20_25", pictures: picArray, videos: vidArray)
        ch5.append(au10_20_25)
        
        return ch5
    }
    
    func CH6() -> [AU]{
        
        var ch6 = [AU]()
        
        var name = "Muscles"
        var picArray = [String]()
        var vidArray = [String]()
        let muscles = AU(name: name, pdf: "Ch6_Muscles", pictures: picArray, videos: vidArray)
        ch6.append(muscles)
        
        name = "Subtle Differences"
        picArray = []
        vidArray = []
        let SD = AU(name: name, pdf: "Ch6_SD", pictures: picArray, videos: vidArray)
        ch6.append(SD)
        
        name = "AU 11"
        picArray = ["s0","s11"]
        vidArray = ["AU11"]
        let au11 = AU(name: name, pdf: "AU11", pictures: picArray, videos: vidArray)
        ch6.append(au11)
        
        name = "AU 12"
        picArray = ["s0","s1012x25", "s1012y25", "s12x", "s12x1625", "s12x_23", "s12x_24", "s12x_26", "s12y_17", "s12y_24", "s12y_25", "s6121517", "s6122325", "s612x15x", "s612y151", "s612z15y", "s6_12x", "s6_12y15", "s6_12y17", "s6_12y23", "s6_12y24", "s6_12y25", "s6_12z", "s6_12z17", "s6_12z25", "s6_12z26", "s6_12z27", "sL12x"]
        vidArray = ["AU101216", "AU101225", "AU12", "AU121517", "AU121625", "AU121723", "AU12_15", "AU12_17", "AU12_23", "AU12_24", "AU12_26", "AU12_27", "AU12only", "AU67_12", "AU6_12B", "AU6_12o", "AU7_12o"]
        let au12 = AU(name: name, pdf: "AU12", pictures: picArray, videos: vidArray)
        ch6.append(au12)
        
        name = "AU 13"
        picArray = ["s0","s13_25", "s13a", "s13b", "s6_13a", "s6_13b"]
        vidArray = ["AU13"]
        let au13 = AU(name: name, pdf: "AU13", pictures: picArray, videos: vidArray)
        ch6.append(au13)
        
        name = "AU 6+12, 7+12, 6+7+12"
        picArray = ["s0","s6_12x", "s6_12y23", "s6_12y24", "s6_12y25","s6_12z","s6_12z25", "s6_12z26", "s6_12z27","s6122325"]
        vidArray = ["AU67_12", "AU6_12B", "AU6_12o"]
        let au67_12 = AU(name: name, pdf: "AU67_12", pictures: picArray, videos: vidArray)
        ch6.append(au67_12)
        
        name = "AU 10+12+25, 12+16+25, 10+12+16+25"
        picArray = ["s0", "s12x1625"]
        vidArray = ["AU121625"]
        let au10_12_16_25 = AU(name: name, pdf: "AU10_12_16_25", pictures: picArray, videos: vidArray)
        ch6.append(au10_12_16_25)
        
        name = "AU 12+26, 12+27"
        picArray = ["s0", "s12x_26", "s6_12z26","s6_12z27"]
        vidArray = ["AU12_26","AU12_27"]
        let au12_2627 = AU(name: name, pdf: "AU12_2627", pictures: picArray, videos: vidArray)
        ch6.append(au12_2627)
        
        name = "AU 12+17"
        picArray = ["s0", "s12y_17"]
        vidArray = ["AU12_17"]
        let au12_17 = AU(name: name, pdf: "AU12_17", pictures: picArray, videos: vidArray)
        ch6.append(au12_17)
        
        name = "AU 12+15, 12+15+17, 6+12+15, 6+12+15+17"
        picArray = ["s0", "s6121517", "s612x15x", "s612y151", "s612z15y", "s6_12y15",]
        vidArray = ["AU121517", "AU12_15"]
        let au6_12_15_17 = AU(name: name, pdf: "AU6_12_15_17", pictures: picArray, videos: vidArray)
        ch6.append(au6_12_15_17)
    
        return ch6
    }
    
    func CH7() -> [AU]{
        
        var ch7 = [AU]()
        
        var name = "Muscles"
        var picArray = [String]()
        var vidArray = [String]()
        let muscles = AU(name: name, pdf: "Ch7_Muscles", pictures: picArray, videos: vidArray)
        ch7.append(muscles)
        
        name = "Subtle Differences"
        picArray = []
        vidArray = []
        let SD = AU(name: name, pdf: "Ch7_SD", pictures: picArray, videos: vidArray)
        ch7.append(SD)
        
        name = "AU 18"
        picArray = ["s0","s18a", "s18b", "s18_23", "s18_25"]
        vidArray = ["AU18", "AU18_23"]
        let au18 = AU(name: name, pdf: "AU18", pictures: picArray, videos: vidArray)
        ch7.append(au18)
        
        name = "AU 22 and 22+25"
        picArray = ["s0", "s22_2325", "s22_25"]
        vidArray = ["AU102225", "AU162225", "AU222325", "AU22_25"]
        let au22 = AU(name: name, pdf: "AU22", pictures: picArray, videos: vidArray)
        ch7.append(au22)
        
        name = "AU 23"
        picArray = ["s0", "s10y1723", "s10y2325", "s12x_23", "s14_23", "s15y_23", "s17_23", "s18_23", "s20x2325", "s20z2325", "s22_2325", "s23", "s23_25", "s23_26", "s6122325", "s6_12y23"]
        vidArray = ["AU101723", "AU102325", "AU121723", "AU12_23", "AU14_23", "AU151723", "AU15_23", "AU162325", "AU17_23", "AU18_23", "AU202325", "AU222325", "AU23", "AU23_26"]
        let au23 = AU(name: name, pdf: "AU23", pictures: picArray, videos: vidArray)
        ch7.append(au23)
        
        name = "AU 24"
        picArray = ["s0","s24", "s12x_24", "s12y_24", "s17_24", "s6_12y24"]
        vidArray = ["AU24","AU12_24", "AU17_24"]
        let au24 = AU(name: name, pdf: "AU24", pictures: picArray, videos: vidArray)
        ch7.append(au24)
        
        name = "AU 28 and 26+28"
        picArray = ["s0", "s28"]
        vidArray = ["AU28"]
        let au28 = AU(name: name, pdf: "AU28", pictures: picArray, videos: vidArray)
        ch7.append(au28)
        
        name = "AU 10+23+25"
        picArray = ["s0", "s10y2325"]
        vidArray = ["AU102325"]
        let au10_23_25 = AU(name: name, pdf: "AU10_23_25", pictures: picArray, videos: vidArray)
        ch7.append(au10_23_25)
        
        name = "AU 12+23, 12+24"
        picArray = ["s0", "s12x_23", "s6122325", "s6_12y23", "s12x_24", "s12y_24", "s6_12y24"]
        vidArray = ["AU12_23", "AU12_24"]
        let au12_2324 = AU(name: name, pdf: "AU12_2324", pictures: picArray, videos: vidArray)
        ch7.append(au12_2324)
        
        name = "AU 14+23"
        picArray = ["s0", "s14_23","sW0","sW14_23"]
        vidArray = ["AU14_23"]
        let au14_23 = AU(name: name, pdf: "AU14_23", pictures: picArray, videos: vidArray)
        ch7.append(au14_23)
        
        name = "AU 17+23, 17+24"
        picArray = ["s0", "s17_23", "s17_24"]
        vidArray = ["AU17_23","AU17_24", "AU151723"]
        let au17_2324 = AU(name: name, pdf: "AU17_2324", pictures: picArray, videos: vidArray)
        ch7.append(au17_2324)
        
        name = "AU 6+12+17+23 or 12+17+23"
        picArray = ["s0"]
        vidArray = ["AU121723"]
        let au6_12_17_23 = AU(name: name, pdf: "AU6_12_17_23", pictures: picArray, videos: vidArray)
        ch7.append(au6_12_17_23)
        
        name = "AU 10+17+23"
        picArray = ["s0", "s10y1723"]
            vidArray = ["AU101723"]
        let au10_17_23 = AU(name: name, pdf: "AU10_17_23", pictures: picArray, videos: vidArray)
        ch7.append(au10_17_23)
        
        name = "AU 18+23"
        picArray = ["s0", "s18_23"]
        vidArray = ["AU18_23"]
        let au18_23 = AU(name: name, pdf: "AU18_23", pictures: picArray, videos: vidArray)
        ch7.append(au18_23)
        
        name = "AU 15+23"
        picArray = ["s0", "s15y_23"]
        vidArray = ["AU151723", "AU15_23"]
        let au15_23 = AU(name: name, pdf: "AU15_23", pictures: picArray, videos: vidArray)
        ch7.append(au15_23)
        
        name = "AU 23+25+26"
        picArray = ["s0"]
        vidArray = []
        let au23_25_26 = AU(name: name, pdf: "AU23_25_26", pictures: picArray, videos: vidArray)
        ch7.append(au23_25_26)
        
        name = "AU 22+23+25"
        picArray = ["s0", "s22_2325"]
        vidArray = ["AU222325"]
        let au22_23_25 = AU(name: name, pdf: "AU22_23_25", pictures: picArray, videos: vidArray)
        ch7.append(au22_23_25)
        
        name = "AU 20+23+25"
        picArray = ["s0", "s20x2325", "s20z2325"]
        vidArray = ["AU202325"]
        let au20_23_25 = AU(name: name, pdf: "AU20_23_25", pictures: picArray, videos: vidArray)
        ch7.append(au20_23_25)
        
        return ch7
    }
    
    
    
}
