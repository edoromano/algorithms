def fibonacci(n)
  return n < 2 ? n : fibonacci(n-2)+fibonacci(n-1)
end

n = (-10..10).map { |e| fibonacci(e) }
p n
