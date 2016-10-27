# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n,
# find the one that is missing from the array.
#
#  For example,
#  Given nums = [0, 1, 3] return 2.
#


# @param {Integer[]} nums
# # @return {Integer}
def missing_number(nums)
  nums.sort!
  missing = nums[0]
  return 0 if nums[0] == 1
  i = 0
  while missing + 1 == nums[i+1]
    missing += 1
    i+=1
  end
  return missing + 1
end
