//
//  ViewController.swift
//  SlotMachine
//
//  Created by Mark Rabins on 12/17/14.
//  Copyright (c) 2014 self.swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    var titleLabel: UILabel!
    
    // Infortation Labels
    
    var creditsLabel: UILabel!
    var betsLabel: UILabel!
    var winnerPaidLabel: UILabel!
    var creditsTitleLabel: UILabel!
    var betTitleLabel: UILabel!
    var winnerPaidTitleLabel: UILabel!
    
    // Buttons in fourth container
    
    var resetButton: UIButton!
    var betOneButton: UIButton!
    var betMaxButton: UIButton!
    var spinButton: UIButton!
    
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0
    
    let kHalf:CGFloat = 1.0/2.0
    let kEighth:CGFloat = 1.0/8.0
    
    let kNumberOfContainers = 3
    let kNumberOfSlots = 3
    let kThird:CGFloat = 1.0/3.0
    let kMarginForSlot:CGFloat = 2.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupContainerViews()
        setupFirstContainer(self.firstContainer)
        setupSecondContainer(self.secondContainer)
        setupThirdContainer(self.thirdContainer)
        setupFouthContainer(self.fourthContainer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // IBActions
    
    func resetButtonPressed (button:UIButton) {
        println("You pressed the button")
    }
    
    func betOneButtonPressed (button: UIButton) {
        println(button)
    }
    
    func betMaxButtonPressed (button:UIButton) {
        
    }
    
    func spinButtonPressed (button:UIButton) {
        
    }
    
    
    func setupContainerViews () {
        firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.view.bounds.origin.y, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        firstContainer.backgroundColor = UIColor.redColor()
        view.addSubview(self.firstContainer)
        
        secondContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * (3 * kSixth)))
       secondContainer.backgroundColor = UIColor.blackColor()
        view.addSubview(self.secondContainer)
        
        thirdContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        thirdContainer.backgroundColor = UIColor.lightGrayColor()
        view.addSubview(self.thirdContainer)
        
        fourthContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height + thirdContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
        fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
        
    }
    
    func setupFirstContainer(containerView: UIView) {
        titleLabel = UILabel()
        titleLabel.text = "Super Slots"
        titleLabel.textColor = UIColor.yellowColor()
        titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        titleLabel.sizeToFit()
        titleLabel.center = containerView.center
        containerView.addSubview(self.titleLabel)
      
    }
    func setupSecondContainer(containerView: UIView) {
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                var slotImageView = UIImageView()
                slotImageView.backgroundColor = UIColor.yellowColor()
                slotImageView.frame = CGRect(x: containerView.bounds.origin.x + (containerView.bounds.size.width * CGFloat(containerNumber) * kThird), y: containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat(slotNumber) * kThird), width: containerView.bounds.width * kThird - kMarginForSlot, height: containerView.bounds.height * kThird - kMarginForSlot)
                containerView.addSubview(slotImageView)
            }
        }
    }
    func setupThirdContainer(containerView: UIView) {
        creditsLabel = UILabel()
        creditsLabel.text = "000000"
        creditsLabel.textColor = UIColor.redColor()
        creditsLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        creditsLabel.sizeToFit()
        creditsLabel.center = CGPoint(x: containerView.frame.width * kSixth, y: containerView.frame.height * kThird)
        creditsLabel.textAlignment = NSTextAlignment.Center
        creditsLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.creditsLabel)
        
        betsLabel = UILabel()
        betsLabel.text = "0000"
        betsLabel.textColor = UIColor.redColor()
        betsLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        betsLabel.sizeToFit()
        betsLabel.center = CGPoint(x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird)
        betsLabel.textAlignment = NSTextAlignment.Center
        betsLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.betsLabel)
        
        winnerPaidLabel = UILabel ()
        winnerPaidLabel.text = "000000"
        winnerPaidLabel.textColor = UIColor.redColor()
        winnerPaidLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        winnerPaidLabel.sizeToFit()
        winnerPaidLabel.center = CGPoint(x: containerView.frame.width * kSixth * 5, y: containerView.frame.height * kThird)
        winnerPaidLabel.textAlignment = NSTextAlignment.Center
        winnerPaidLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.winnerPaidLabel)
        
        creditsTitleLabel = UILabel()
        creditsTitleLabel.text = "Credits"
        creditsTitleLabel.textColor = UIColor.blackColor()
        creditsTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
        creditsTitleLabel.sizeToFit()
        creditsTitleLabel.center = CGPoint(x: containerView.frame.width * kSixth, y: containerView.frame.height * kThird * 2)
        containerView.addSubview(self.creditsTitleLabel)
        
        betTitleLabel = UILabel()
        betTitleLabel.text = "Bet"
        betTitleLabel.textColor = UIColor.blackColor()
        betTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
        betTitleLabel.sizeToFit()
        betTitleLabel.center = CGPoint (x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird * 2)
        containerView.addSubview(self.betTitleLabel)
        
        winnerPaidLabel = UILabel()
        winnerPaidLabel.text = "Winner Paid"
        winnerPaidLabel.textColor = UIColor.blackColor()
        winnerPaidLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
        winnerPaidLabel.sizeToFit()
        winnerPaidLabel.center = CGPoint(x: containerView.frame.width * 5 * kSixth, y: containerView.frame.height * 2 * kThird)
        containerView.addSubview(self.winnerPaidLabel)
    }
    
    func setupFouthContainer (containerView:UIView) {
        resetButton = UIButton()
        resetButton.setTitle("Reset", forState: UIControlState.Normal)
        resetButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        resetButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
        resetButton.backgroundColor = UIColor.lightGrayColor()
        resetButton.sizeToFit()
        self.resetButton.center = CGPoint(x: containerView.frame.width * kEighth, y: containerView.frame.height * kHalf)
        self.resetButton.addTarget(self, action: "resetButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.resetButton)
        
        betOneButton = UIButton()
        betOneButton.setTitle("Bet One", forState: UIControlState.Normal)
        betOneButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        betOneButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
        betOneButton.backgroundColor = UIColor.greenColor()
        betOneButton.sizeToFit()
        betOneButton.center = CGPoint(x: containerView.frame.width * 3 * kEighth, y: containerView.frame.height * kHalf)
        betOneButton.addTarget(self, action: "betOneButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.betOneButton)
        
        self.betMaxButton = UIButton()
        self.betMaxButton.setTitle("BetMax", forState: UIControlState.Normal)
        self.betMaxButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.betMaxButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
        self.betMaxButton.backgroundColor = UIColor.redColor()
        self.betMaxButton.sizeToFit()
        self.betMaxButton.center = CGPoint(x: containerView.frame.width * 5 * kEighth, y: containerView.frame.height * kHalf)
        self.betMaxButton.addTarget(self, action: "betMaxButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.betMaxButton)
        
        spinButton = UIButton()
        spinButton.setTitle("Spin", forState: UIControlState.Normal)
        spinButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        spinButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
        spinButton.backgroundColor = UIColor.greenColor()
        spinButton.sizeToFit()
        spinButton.center = CGPoint (x: containerView.frame.width * 7 * kEighth, y: containerView.frame.height * kHalf)
        spinButton.addTarget(self, action: "spinButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.spinButton)
        
    }
    
    
}
