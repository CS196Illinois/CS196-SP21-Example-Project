import Foundation

public func MergeSort<T: Comparable>(_ arr: [T]) -> [T] {
    return MergeSortHelper(arr)
}

func MergeSortHelper<T: Comparable>(_ arr: [T]) -> [T] {
    // If array is only one item or empty, return it
    if arr.count <= 1 {
        return arr
    }
    
    // Make recursive call sorting each half of the array
    let left = MergeSortHelper(Array(arr[0 ..< arr.count / 2]))
    let right = MergeSortHelper(Array(arr[arr.count / 2 ..< arr.count]))
    
    // Merge the two sorted sub-arrays and return the resulting array
    return Merge(left, right)
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
