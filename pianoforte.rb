load "util.rb"
load "ga.rb"

# Create and setup our GA simulation
ga = GA.new
puts "Created GA -> population: #{ga.population_size}, mutation rate: #{ga.mutation_rate},
  xover pool size ratio: #{ga.xover_pool_size_ratio}"
ga.create_population(Individual.new)  # In the future we can choose the type of individual to evolve?
