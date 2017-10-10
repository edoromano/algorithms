require 'pry'

input = [
	['GHI', 'JKL'],
	['ABC', 'DEF'],
	['JKL', 'MNO'],
	['DEF', 'GHI'],
	['MNO', 'PQR'] 
] 

def convert_input(input)
	output = {}
	input.each do |current|
		output[current[0]] = {} if output[current[0]].nil?
		output[current[0]]['departure'] = true  
		output[current[1]] =  {} if output[current[1]].nil?
		output[current[1]]['arrival'] = true  
	end
	return output
end

def find_departure_arrival(input)
	result = [] 
	input = convert_input(input)
	p input
	input.each do |k, v|
		result.push(k) if v['departure'] && !v['arrival']
		result.push(k) if v['arrival'] && !v['departure']
	end
	return result
end

p find_departure_arrival(input)
