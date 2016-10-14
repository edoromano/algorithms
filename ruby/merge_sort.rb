def merge(arr, first, half, last)
  n1 = half - first + 1
  n2 = last - half
  lar = []
  rar = []
  (0...n1).each do |n|
    lar[n] = arr[first + n]
  end
  (0...n2).each do |m|
    rar[m] = arr[half + 1 + m]
  end
  lar[lar.size] = 100000
  rar[rar.size] = 100000
  i = j = 0
  (first..last).each do |k|
    if lar[i] <= rar[j]
      arr[k] = lar[i]
      i += 1
    else
      arr[k] = rar[j]
      j += 1
    end
  end

end
def merge_sort(arr, first,last)
  if(first < last)
    half = (first+last) / 2
    merge_sort(arr, first, half)
    merge_sort(arr, half+1, last)
    merge(arr, first, half, last)
  end
end

input = [1,4,2,5,9,2,6,3]
merge_sort(input, 0, 3)
p input
