//
//  Match.swift
//  Rock Paper Scissors
//

enum Match {
    case Win, Loss, Tie
    
    func toString() -> String {
        switch self {
        case .Win:
            return "Win"
        case .Loss:
            return "Loss"
        default:
            return "Tie"
        }
    }
    
    static func decide(_ playerOne: Moves, _ playerTwo: Moves) -> Match {
        if playerOne == .Paper {
            switch playerTwo {
            case .Rock:
                return .Win
            case .Scissors:
                return .Loss
            default:
                return .Tie
            }
        }
        
        if playerOne == .Rock {
            switch playerTwo {
            case .Paper:
                return .Loss
            case .Scissors:
                return .Win
            default:
                return .Tie
            }
        }
        
        if playerOne == .Scissors {
            switch playerTwo {
            case .Paper:
                return .Win
            case .Rock:
                return .Loss
            default:
                return .Tie
            }
        }
        
        return .Tie
    }
}
