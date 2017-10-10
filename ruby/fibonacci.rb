require 'benchmark'

def fibonacci_recursive(n)
	if n < 2
		return n
	end
	return fibonacci_recursive(n-2)+fibonacci_recursive(n-1)
end

#1 1 2 3 5 8 13 21
def fibonacci_iterative(n)
	if n < 2
		return n
	end
	current = 1
	prev = 0
	aux = 0
	i = 1
	while i < n
		aux = current + prev
		prev = current 
		current = aux
		i+=1
	end
	return current
end

n = puts Benchmark.measure { (-10..100).map { |e| fibonacci_recursive(e) }}
n = puts Benchmark.measure { (-10..100).map { |e| fibonacci_iterative(e) }}
p n
