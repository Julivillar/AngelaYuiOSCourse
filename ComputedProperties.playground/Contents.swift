import Foundation

var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int{
    get{
        let area = width * height
        let areaPerBucket: Float = 1.5
        let numberOfBuckets = area / areaPerBucket
        return Int(ceil(numberOfBuckets))
    }
    set{
        let areaCovered: Float = 1.5 * Float(newValue)
        print("this amount of paint covers \(areaCovered)")
    }
}
 
print(bucketsOfPaint)
bucketsOfPaint = 9
