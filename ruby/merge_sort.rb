def merge(arr, first, half, last)
  n1 = half - first + 1
  n2 = last - half
  lar = []
  rar = []
  (0...n1).each do |i|
    lar[i] =  arr[first + i]
  end
  (0...n2).each do |j|
    rar[j] =  arr[half + j + 1]
  end
  lar[lar.length] = 88888888
  rar[rar.length] = 88888888
  i = j = 0
  (first..last).each do |k|
   if(lar[i] <= rar[j])
     arr[k] = lar[i]
     i+=1
   else
     arr[k] = rar[j]
     j+=1
   end
  end
end

def merge_sort(arr, first, last)
  if(first < last)
    half = (last + first) / 2
    merge_sort(arr, first, half)
    merge_sort(arr, half+1, last)
    merge(arr, first, half, last)
  end
end

arr = [1,4,9,8,7,6,2,5]
p arr
merge_sort(arr, 0, arr.size-1)
p arr
