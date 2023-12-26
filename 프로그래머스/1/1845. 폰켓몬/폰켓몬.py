def solution(nums):
    arr = {}
    for num in nums:
        arr[num] = arr.get(num, 0) + 1

    if len(arr) >= len(nums) / 2:
        return len(nums) / 2
    else:
        return len(arr)