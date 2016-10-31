//: Playground - noun: a place where people can play

import Cocoa

struct Address {
    
    var streetAddress: String
    var city: String
    var state: String
    var postalCode: String
    
} // Address

struct AddressBits {
    
    let underlyingPtr: UnsafeMutablePointer<Address>
    let padding1: Int
    let padding2: Int
    let padding3: String
    let padding4: String
    let padding5: String
    
} // AddressBit

var MyAddress1: Address = Address(streetAddress: "Av. Las Americas", city: "Quito", state: "Pichincha", postalCode: "12345")
var MyAddress2 = MyAddress1
var MyAddress3 = MyAddress2

var bits1 = unsafeBitCast(MyAddress1, to: AddressBits.self)
var bits2 = unsafeBitCast(MyAddress2, to: AddressBits.self)
var bits3 = unsafeBitCast(MyAddress3, to: AddressBits.self)

print("MyAddress1: \(bits1.underlyingPtr)")
print("MyAddress2: \(bits2.underlyingPtr)")
print("MyAddress3: \(bits3.underlyingPtr)")

print("\n---------------------------------------------\n")

MyAddress2.streetAddress = "Av. Naciones Unidas"

bits1 = unsafeBitCast(MyAddress1, to: AddressBits.self)
bits2 = unsafeBitCast(MyAddress2, to: AddressBits.self)
bits3 = unsafeBitCast(MyAddress3, to: AddressBits.self)

print("MyAddress1: \(bits1.underlyingPtr)")
print("MyAddress2: \(bits2.underlyingPtr)")
print("MyAddress3: \(bits3.underlyingPtr)")

print("\n---------------------------------------------\n")

MyAddress3.streetAddress = "Av. Naciones Unidas"

bits1 = unsafeBitCast(MyAddress1, to: AddressBits.self)
bits2 = unsafeBitCast(MyAddress2, to: AddressBits.self)
bits3 = unsafeBitCast(MyAddress3, to: AddressBits.self)

print("MyAddress1: \(bits1.underlyingPtr)")
print("MyAddress2: \(bits2.underlyingPtr)")
print("MyAddress3: \(bits3.underlyingPtr)")
