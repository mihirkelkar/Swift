var array = [5, 7, 10, 14, 34, 64, 96, 102]

func bSearch(numbers: Int[], target: Int) -> Bool{
    var low = numbers.startIndex
    var high = numbers.endIndex
    var midpoint = numbers.count / 2
    while(low < high){
        if numbers[midpoint] < target{
            low = midpoint
            midpoint = Int(low + high / 2)
        }
        else if numbers[midpoint] > target{
            high = midpoint
            midpoint = Int(low + high / 2)
        }
        else if numbers[midpoint] == target
        {
            return true
        }
        
    }
    return false
}
