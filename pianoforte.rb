require 'json'
require 'util'
require 'ga'
require 'agent'

# load configuration
if ARGV.empty?
  puts "Missing configuration argument. Need either JSON string, or filename!"
elsif ARGV[0].start_with?("{")
  config = JSON.parse(ARGV[0])
else
  config_file = ARGV[0]
end

# Create and setup our GA simulation
ga = GA.new(
  population_size: config["ga"]["populationSize"],
  mutation_rate: config["ga"]["mutationRate"],
  xover_pool_size_ratio: config["ga"]["xoverPoolSizeRatio"]
)
puts "Created GA -> population: #{ga.population_size}, mutation rate: #{ga.mutation_rate},
  xover pool size ratio: #{ga.xover_pool_size_ratio}"

# create the population. In future we will be able to change individual
ga.create_population(config)
