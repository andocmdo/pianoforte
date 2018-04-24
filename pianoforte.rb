load "util.rb"
load "ga.rb"

ga = GA.new(mutation_rate: 300)
puts "population: #{ga.population_size}, mutation rate: #{ga.mutation_rate},
  xover pool size ratio: #{ga.xover_pool_size_ratio}"
