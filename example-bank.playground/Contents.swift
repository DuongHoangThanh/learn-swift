class Bank {
    static var coinsInBank = 100000
    
    static func distribute(coins coinsRequest: Int) -> Int {
        let coinsVend = min(coinsRequest, coinsInBank)
        coinsInBank -= coinsVend
        return coinsVend
    }
    
    static func recevice(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.recevice(coins: coinsInPurse)
    }
}

var player1: Player? = Player(coins: 200)
var player2: Player? = Player(coins: 400)

player1!.win(coins: 250)
player2!.win(coins: 150)

print("Coins in purse player1: \(player1!.coinsInPurse)")
print("Coins in purse player2: \(player2!.coinsInPurse)")
print("Coins in bank: \(Bank.coinsInBank)")

print("Player1 and Player2 deinit")
player1 = nil
player2 = nil
print("Coins in bank: \(Bank.coinsInBank)")

