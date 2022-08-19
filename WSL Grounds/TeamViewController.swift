//
//  TeamViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 11/08/2022.
//

import UIKit

class TeamViewController: UITabBarController {
    
    var teamName = ""
    var stationCode = ""
    var stadiumLat = 0.0
    var stadiumLon = 0.0
    var teamCarInfo = ""
    var teamTrainInfo = ""
    var teamDrinkInfo = ""
    var teamFixtures = ""
    
    func loadTeamData() {
        if teamName == "Arsenal" {
            stationCode = "ELS"
            stadiumLat = 51.661939
            stadiumLon = -0.272376
            teamCarInfo = "SatNav Postcode: WD6 5AL\n"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/arsenal-ladies/scores-fixtures/"
        } else if teamName == "Aston Villa" {
            stationCode = "BSC"
            stadiumLat = 52.5655187
            stadiumLon = -1.991164
            teamCarInfo = "Sat Nav Postcode: WS1 4SA\n\nAston Villa Women play most of their home games at Walsall's Banks Stadium. Some games will be played at Villa Park so please check before travelling.\n\nFor games at the Banks Stadium leave the M6 at Junction 9 taking the A461 towards Walsall. Turn right on to the A4148 (Wallowes Lane) and then turn right at the second set of traffic lights.  The ground is on the left."
            teamTrainInfo = "From Bescot Stadium Station, exit the station and walk under the M6 to the ground."
            teamDrinkInfo = "The closest pub to the ground is the King George V, on Wallowes Lane about 15 minutes walk away by Morrisions. There is also the Saddlers Club outside the ground, which admits fans for a small fee.\n\nAlcohol is not available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/aston-villa-women/scores-fixtures"
        } else if teamName == "Brighton & Hove Albion" {
            stationCode = "CRW"
            stadiumLat = 51.099568
            stadiumLon = -0.1953945
            teamCarInfo = "Sat Nav Postcode: RH11 9RX\n\nBrighton & Hove Albion Women play most of their home games the Crawley Town Peoples Pension Stadium. Some games will be played at the Amex so please check before travelling.\n\nFor games in Crawley leave the M23 at Junction 11 and take the A23 towards Crawley. Once on the A23 at the next roundabout take the first left onto Coachmans Drive for the ground."
            teamTrainInfo = "Crawley Station is a half hour walk away. Exit the station onto Station Way and at the end turn left onto Brighton Road. After half a mile turn left onto Southgate Drive and then right onto Barrington Road. Next turn right onto Wakehurst Drive and then left into Tyler Road. At the end turn right onto Southgate Avenue. Walk down Southgate Avenue to the roundabout for the ground."
            teamDrinkInfo = "The closest pub to the ground is the Half Moon, on Brighton Road about five minutes walk from the ground. Alternatively further down Brighton Road, into Wakehurst Drive is the Downsman."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/brighton-and-hove-albion-women/scores-fixtures"
        } else if teamName == "Chelsea" {
            stationCode = "NBT"
            stadiumLat = 51.4060501
            stadiumLon = -0.2814285
            teamCarInfo = "SatNav Postcode: KT1 3PB\n\nChelsea Women play their home games at Kingsmeadow, Southwest London. Leave the M25 at Junction 10 and take the A3 towards London.  Turn off the A3 at New Malden onto the A2043 and at the next roundabout turn left onto Kingston Road (A2043).  Continue on Kingston Road towards Kingston and the ground is on the left after about a mile."
            teamTrainInfo = "From London Waterloo take the train to Norbiton Station.  Exit the station on to either Coombe Road or Norbiton Avenue.  From Coombe Road turn left and walk under the railway bridge and then turn right onto Norbiton Avenue.  Follow Norbiton Avenue all the way round to Gloucester Road.  Turn right onto Gloucester Road and then at the end turn left onto Cambridge Road, the ground is down the third street on the right."
            teamDrinkInfo = "Close to the ground on Kingston Road are the Duke of Wellington and the Prince of Wales.  Otherwise there are pubs in Kingston or New Malden."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/chelsea-ladies/scores-fixtures"
        } else if teamName == "Everton" {
            stationCode = "KKD"
            stadiumLat = 53.447313
            stadiumLon = -2.953017
            teamCarInfo = "SatNav Postcode: L4 9XP\n\n"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/everton-ladies/scores-fixtures"
        } else if teamName == "Leicester City" {
            stationCode = "LEI"
            stadiumLat = 52.6200439
            stadiumLon = -1.1414997
            teamCarInfo = "Sat Nav Postcode: LE2 7FL\n\nLeicester City Women will play all of their home games this season at the King Power Stadium.\n\nFrom the M1 Junction 21 take the A5460 (Narborough Road) towards Leicester. After going under the railway bridge turn right into Upperton Road, cross the river and turn right into Eastern Boulevard following this to the ground."
            teamTrainInfo = "From Leicester Station cross over London Road and head down Waterloo Way. At the end of Waterloo Way turn left into Welford Road, then right into Almond Road. At the end of Almond Road turn left into Aylestone Road and then take the next right into Raws Dykes Road to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs near the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leicester-city-women/scores-fixtures"
        } else if teamName == "Liverpool" {
            stationCode = "RFY"
            stadiumLat = 53.3732067
            stadiumLon = -3.035836
            teamCarInfo = "Sat Nav Postcode: CH42 9PY\n\nLiverpool Women will play most of their games at Tranmere Rovers Prenton Park. Some games will be played at Anfield so please check before travelling.\n\nLeave the M53 at junction 3, and take the A552 (Woodchurch Road) towards Birkenhead. After passing Sainsburys on your left, turn right on to the B5151 (Mount Road) and then the first left for the ground."
            teamTrainInfo = "From Rock Ferry Station exit onto Bedford Road. Turn right and walk down Bedford Road, which becomes Bedford Avenue. At the roundabout with Bebington Road continue straight over into Bedford Drive.  Finally turn right into Borough Road, which leads down to the ground."
            teamDrinkInfo = "The Prenton Park Hotel is near the away end, and as a result always popular with away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/liverpool-ladies/scores-fixtures"
        } else if teamName == "Manchester City" {
            stationCode = "ABY"
            stadiumLat = 53.481274
            stadiumLon = -2.192825
            teamCarInfo = "SatNav Postcode: M11 4TQ\n\nManchester City Women play their games at the Manchester City Acadamy Stadium, which is across the A6010 from the Etihad. Leave the M60 at Junction 23 and take the A635 towards Manchester. Turn off the A635 onto the Ashton New Road (A662). Stay on the A662 and the stadium is on the left just before the A6010."
            teamTrainInfo = "Take the train from Manchester Piccadilly to Ashburys Station, on leaving the station turn left and walk up the A6010 for about 15 minutes to the ground."
            teamDrinkInfo = "There are very few pubs near the ground, and most are for home fans only. The Stanley, on Pottery Lane towards Ashburys Railway Station, does admit away fans. A better bet would be to drink in Manchester City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/manchester-city-women/scores-fixtures"
        } else if teamName == "Manchester Utd" {
            stationCode = "NLW"
            stadiumLat = 53.489750
            stadiumLon = -2.530078
            teamCarInfo = "SatNav Postcode: WN7 4JY\n\n"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/manchester-united-women/scores-fixtures"
        } else if teamName == "Reading" {
            stationCode = "RDG"
            stadiumLat = 51.4223249
            stadiumLon = -0.9834968
            teamCarInfo = "Sat Nav Postcode: RG2 0FL\n\nReading Women play their home games at the Select Car Leasing Stadium.\n\nFrom the M4 Junction 11 take the A33 (Reading Relief Road) towards Reading, turning off the A33 into Hurst Road for the ground."
            teamTrainInfo = "From Reading Station take the Football Special bus to the ground, come out of the station cross the road and turn right for the bus stop."
            teamDrinkInfo = "There are no pubs near to the ground, so if arriving by train then drink in the town centre by the railway station before getting the buses out to the stadium.  There is also a Holiday Inn and pub called Calaghans about fifteen minutes walk from the ground on Imperial Way.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/reading-women/scores-fixtures"
        } else if teamName == "Tottenham Hotspur" {
            stationCode = "SRA"
            stadiumLat = 51.5602116
            stadiumLon = -0.0118855
            teamCarInfo = "Sat Nav Postcode: E10 5NF\n\nTottenham Hotspur Women play most of thier home games at Leyton Orient Brisbane Road. Some games will be played at the Tottenham Hotspur Stadium so please check before travelling.\n\nLeave the M25 at junction 27 and take the M11 southbound.  At the end of the M11, bear right (A406 N. Circ. Rd West, London N and W) onto the North Circular Road.  Keep in left hand lanes and take first exit (signposted Walthamstow and City A104).  At the roundabout turn left into Woodford New Road (A104). At next roundabout take 2nd exit and follow road round to left into Lea Bridge Road.  After 0.5 miles turn left at lights into Leyton Green Road.  Filter left after 0.3 miles and turn left at the T-junction into Leyton High Road.  After 1.2 miles ground is on the right down Buckingham Road."
            teamTrainInfo = "Take the Central Line to Leyton Tube Station.  Exit the station and turn right onto the High Road Leyton.  Walk up the High Road and then take the seventh left into Buckingham Road for the ground.  The nearest National Rail Station is Stratford, where you can change to the Central Line."
            teamDrinkInfo = "The supporters club at the ground (in the West Stand) admits away fans.  The nearest pub to the ground is the Coach & Horses, on Leyton High Road.  Turn right out of the tube station and walk along the High Road (past the turning for the ground) for about half a mile."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/tottenham-hotspur-women/scores-fixtures"
        }else if teamName == "West Ham Utd" {
            stationCode = "XXX"
            stadiumLat = 51.54740
            stadiumLon = 0.16207
            teamCarInfo = "Sat Nav Postcode: RM10 7XL\n\nWest Ham Women play their home games at Dagengam & Redbridge Stadium.\n\nLeave the M25 at Junction 31 and take the A13 towards London.  After four and a half miles turn off the A13 towards Dagenham onto Marsh Way.  At the end of Marsh Way turn left onto the A1306 (New Road).  At the second set of traffic lights turn right onto Ballards Road (B178).  At the end of Ballards Road turn left at the roundabout onto Rainham Road, which leads to the ground."
            teamTrainInfo = "Take the District Line to Dagenham East Station, exit the station and turn left onto Rainham Road, walk up Rainham Road to Victoria Road, the ground is down here on the right."
            teamDrinkInfo = "The only real option is the Eastbrook, on Rainham Road past the ground and Golds Gym."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/west-ham-united-ladies/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }

    override func viewDidLoad() {
        navigationItem.title = teamName
        super.viewDidLoad()
        loadTeamData()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
