class GA
  attr_accessor :population_size
  attr_accessor :mutation_rate
  attr_accessor :xover_pool_size_ratio
  attr_reader :population

  def initialize(population_size: 100, mutation_rate: 0.05, xover_pool_size_ratio: 0.6)
    @population_size = population_size
    @mutation_rate = mutation_rate
    @xover_pool_size_ratio = xover_pool_size_ratio
    @population = Array.new
  end

  def create_population(individual)
    (0..population_size).each do
      @population << individual.new
    end
  end
end
