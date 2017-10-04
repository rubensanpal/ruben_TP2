//====================
import UIKit
//====================
class ViewController: UIViewController {
//====================
    
            //Contection avec des éléments
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    @IBOutlet weak var back_17: UIView!
    @IBOutlet weak var front_17: UIView!
    @IBOutlet weak var back_18: UIView!
    @IBOutlet weak var front_18: UIView!
    @IBOutlet weak var back_19: UIView!
    @IBOutlet weak var front_19: UIView!
    @IBOutlet weak var back_20: UIView!
    @IBOutlet weak var front_20: UIView!
        
            //Conection des images
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    @IBOutlet weak var imgView17: UIImageView!
    @IBOutlet weak var imgView18: UIImageView!
    @IBOutlet weak var imgView19: UIImageView!
    @IBOutlet weak var imgView20: UIImageView!
    
            //Conection des carts
    @IBOutlet weak var card_01: UIView!
    @IBOutlet weak var card_02: UIView!
    @IBOutlet weak var card_03: UIView!
    @IBOutlet weak var card_04: UIView!
    @IBOutlet weak var card_05: UIView!
    @IBOutlet weak var card_06: UIView!
    @IBOutlet weak var card_07: UIView!
    @IBOutlet weak var card_08: UIView!
    @IBOutlet weak var card_09: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    @IBOutlet weak var card_15: UIView!
    @IBOutlet weak var card_16: UIView!
    @IBOutlet weak var card_17: UIView!
    @IBOutlet weak var card_18: UIView!
    @IBOutlet weak var card_19: UIView!
    @IBOutlet weak var card_20: UIView!
   
            //Création des variables
    var cards: [UIView]!
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames: [String] = ["mono.png",
                                        "mono.png",
                                        "sapo.png",
                                        "sapo.png",
                                        "Mariposa_1.png",
                                        "Mariposa_1.png",
                                        "Perro.png",
                                        "Perro.png",
                                        "Ardilla.png",
                                        "Ardilla.png",
                                        "gato.png",
                                        "gato.png",
                                        "leon.png",
                                        "leon.png",
                                        "oveja2.png",
                                        "oveja2.png",
                                        "toro.png",
                                        "toro.png",
                                        "vaca.png",
                                        "vaca.png",]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayChosenWiew = [UIView]()
    
    var arrayOfShowingBacks = [UIView] ()
    var arrayOfHidingFronts = [UIView] ()
    
    //====================
            //Regarder des images
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card_01, card_02, card_03, card_04, card_05,
                 card_06, card_07, card_08, card_09, card_10,
                 card_11, card_12, card_13, card_14, card_15,
                 card_16, card_17, card_18, card_19, card_20]
        
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4,
                             imgView5, imgView6, imgView7, imgView8,
                             imgView9, imgView10, imgView11, imgView12,
                             imgView13, imgView14, imgView15, imgView16,
                             imgView17, imgView18, imgView19, imgView20]
        randomAnimalNames()
        setImagesToCard()
    }

    //====================
            //Action de chaque carte
    @IBAction func showCard(_ sender: UIButton) {
        
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        switch sender.tag {
        case 0:
            flipCard(from: front_1, to: back_1)
            arrayChosenCards.append(arrayOfAnimalNames[0])
            arrayChosenWiew.append(card_01)
            arrayOfShowingBacks.append(back_1)
            arrayOfHidingFronts.append(front_1)
        case 1:
            flipCard(from: front_2, to: back_2)
            arrayChosenCards.append(arrayOfAnimalNames[1])
            arrayChosenWiew.append(card_02)
            arrayOfShowingBacks.append(back_2)
            arrayOfHidingFronts.append(front_2)
        case 2:
            flipCard(from: front_3, to: back_3)
            arrayChosenCards.append(arrayOfAnimalNames[2])
            arrayChosenWiew.append(card_03)
            arrayOfShowingBacks.append(back_3)
            arrayOfHidingFronts.append(front_3)
        case 3:
            flipCard(from: front_4, to: back_4)
            arrayChosenCards.append(arrayOfAnimalNames[3])
            arrayChosenWiew.append(card_04)
            arrayOfShowingBacks.append(back_4)
            arrayOfHidingFronts.append(front_4)
        case 4:
            flipCard(from: front_5, to: back_5)
            arrayChosenCards.append(arrayOfAnimalNames[4])
            arrayChosenWiew.append(card_05)
            arrayOfShowingBacks.append(back_5)
            arrayOfHidingFronts.append(front_5)
        case 5:
            flipCard(from: front_6, to: back_6)
            arrayChosenCards.append(arrayOfAnimalNames[5])
            arrayChosenWiew.append(card_06)
            arrayOfShowingBacks.append(back_6)
            arrayOfHidingFronts.append(front_6)
        case 6:
            flipCard(from: front_7, to: back_7)
            arrayChosenCards.append(arrayOfAnimalNames[6])
            arrayChosenWiew.append(card_07)
            arrayOfShowingBacks.append(back_7)
            arrayOfHidingFronts.append(front_7)
        case 7:
            flipCard(from: front_8, to: back_8)
            arrayChosenCards.append(arrayOfAnimalNames[7])
            arrayChosenWiew.append(card_08)
            arrayOfShowingBacks.append(back_8)
            arrayOfHidingFronts.append(front_8)
        case 8:
            flipCard(from: front_9, to: back_9)
            arrayChosenCards.append(arrayOfAnimalNames[8])
            arrayChosenWiew.append(card_09)
            arrayOfShowingBacks.append(back_9)
            arrayOfHidingFronts.append(front_9)
        case 9:
            flipCard(from: front_10, to: back_10)
            arrayChosenCards.append(arrayOfAnimalNames[9])
            arrayChosenWiew.append(card_10)
            arrayOfShowingBacks.append(back_10)
            arrayOfHidingFronts.append(front_10)
        case 10:
            flipCard(from: front_11, to: back_11)
            arrayChosenCards.append(arrayOfAnimalNames[10])
            arrayChosenWiew.append(card_11)
            arrayOfShowingBacks.append(back_11)
            arrayOfHidingFronts.append(front_11)
        case 11:
            flipCard(from: front_12, to: back_12)
            arrayChosenCards.append(arrayOfAnimalNames[11])
            arrayChosenWiew.append(card_12)
            arrayOfShowingBacks.append(back_12)
            arrayOfHidingFronts.append(front_12)
        case 12:
            flipCard(from: front_13, to: back_13)
            arrayChosenCards.append(arrayOfAnimalNames[12])
            arrayChosenWiew.append(card_13)
            arrayOfShowingBacks.append(back_13)
            arrayOfHidingFronts.append(front_13)
        case 13:
            flipCard(from: front_14, to: back_14)
            arrayChosenCards.append(arrayOfAnimalNames[13])
            arrayChosenWiew.append(card_14)
            arrayOfShowingBacks.append(back_14)
            arrayOfHidingFronts.append(front_14)
        case 14:
            flipCard(from: front_15, to: back_15)
            arrayChosenCards.append(arrayOfAnimalNames[14])
            arrayChosenWiew.append(card_15)
            arrayOfShowingBacks.append(back_15)
            arrayOfHidingFronts.append(front_15)
        case 15:
            flipCard(from: front_16, to: back_16)
            arrayChosenCards.append(arrayOfAnimalNames[15])
            arrayChosenWiew.append(card_16)
            arrayOfShowingBacks.append(back_16)
            arrayOfHidingFronts.append(front_16)
        case 16:
            flipCard(from: front_17, to: back_17)
            arrayChosenCards.append(arrayOfAnimalNames[16])
            arrayChosenWiew.append(card_17)
            arrayOfShowingBacks.append(back_17)
            arrayOfHidingFronts.append(front_17)
        case 17:
            flipCard(from: front_18, to: back_18)
            arrayChosenCards.append(arrayOfAnimalNames[17])
            arrayChosenWiew.append(card_18)
            arrayOfShowingBacks.append(back_18)
            arrayOfHidingFronts.append(front_18)
        case 18:
            flipCard(from: front_19, to: back_19)
            arrayChosenCards.append(arrayOfAnimalNames[18])
            arrayChosenWiew.append(card_19)
            arrayOfShowingBacks.append(back_19)
            arrayOfHidingFronts.append(front_19)
        case 19:
            flipCard(from: front_20, to: back_20)
            arrayChosenCards.append(arrayOfAnimalNames[19])
            arrayChosenWiew.append(card_20)
            arrayOfShowingBacks.append(back_20)
            arrayOfHidingFronts.append(front_20)
            
        default:
            break
        }
        verification()
    }

    //====================
            // funtion pour relancer
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reflip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }

    //====================
            // funtion par retourner des cartes
    func reflip () {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfHidingFronts = []
        arrayOfShowingBacks = []
    }

    //====================
            // funtion par tourner des cartes
    func flipCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions =
            [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions,
                          animations: {
                            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions,
                          animations: {
                            to.isHidden = false
        })
    }

    //====================
            // funtion par sectioner des images
    func setImagesToCard () {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfAnimalNames[number])
            number = number + 1
        }
    }

    //====================
            // funtion pour mélanger des cartes
    func randomAnimalNames() {
        let numbreOfAnimals = arrayOfAnimalNames.count
        
        for _  in 1 ... numbreOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }

    //====================
            // funtion pour vider le section correcte
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(hideCards)),
                                 userInfo: nil,
                                 repeats: false)
            } else {

                arrayChosenWiew = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }

    //====================
            // funtion pour cacher des couples
    @objc func hideCards() {    //le @objc func est par le nouveau version de xcode
        arrayChosenWiew[0].isHidden = true
        arrayChosenWiew[1].isHidden = true
        arrayChosenWiew = []
    }

    //====================
            // action en bouton et funtion par relancer
    @IBAction func reset(_ sender: UIButton) {
        for card in cards {
            card.isHidden = false
        }
        arrayOfAnimalNames = ["mono.png",
                              "mono.png",
                              "sapo.png",
                              "sapo.png",
                              "Mariposa_1.png",
                              "Mariposa_1.png",
                              "Perro.png",
                              "Perro.png",
                              "Ardilla.png",
                              "Ardilla.png",
                              "gato.png",
                              "gato.png",
                              "leon.png",
                              "leon.png",
                              "oveja2.png",
                              "oveja2.png",
                              "toro.png",
                              "toro.png",
                              "vaca.png",
                              "vaca.png",]
        arrayOfRandomAnimalNames = []
        randomAnimalNames()
        setImagesToCard()
    }

    //====================
}

