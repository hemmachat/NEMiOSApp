precedencegroup BitwiseShiftLeftPrecedence {
    associativity: none
    higherThan: BitwiseShiftPrecedence
}

infix operator ~<<: BitwiseShiftLeftPrecedence

public func ~<< (lhs: UInt32, rhs: Int) -> UInt32 {
    return (lhs << UInt32(rhs)) | (lhs >> UInt32(32 - rhs));
}

