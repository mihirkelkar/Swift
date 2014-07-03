var randomNumbers = [42, 10, 18, 6, 2, 15, 31, 59, 5]

func insertionSort(nums: Int[]) {
    
    for i in 1..nums.count {
        
        var x = nums[i]
        
        var j = i
        
        while j > 0 && nums[j-1] > x {
            
            nums[j] = nums[j-1]
            
            j--
            
        }
        
        nums[j] = x
        
    }
    
}
