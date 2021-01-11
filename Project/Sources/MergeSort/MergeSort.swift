import Foundation

public func MergeSort<T: Comparable>(_ arr: [T]) -> [T] {
    return arr
}

func MergeSortHelper<T: Comparable>(_ arr: [T]) -> [T] {
    return arr
}

func Merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var toReturn: [T] = []
    
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < left.count || rightIndex < right.count {
        //Handle edge cases where one array is shorter than the other
        if leftIndex >= left.count {
            toReturn.append(right[rightIndex])
            rightIndex += 1
            continue
        } else if rightIndex >= right.count {
            toReturn.append(left[leftIndex])
            leftIndex += 1
            continue
        }
        
        if left[leftIndex] < right[rightIndex] {
            toReturn.append(left[leftIndex])
            leftIndex += 1
        } else {
            toReturn.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    return toReturn
}
