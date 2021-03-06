
class Agent

  def initialize(conf)
    # make our genome arrays
    buy_genes = Array.new
    sell_genes = Array.new
    hold_genes = Array.new

    # pull in the startingCash amount
    starting_cash = conf["agent"]["startingCash"]

    # Now load in the appropriate files/classes for genome
    conf["agent"]["buyGenes"].each do |filename|
      buy_genes << get_new_class_object_from_filename(filename) #does init work???
    end
    conf["agent"]["sellGenes"].each do |filename|
      sell_genes << get_new_class_object_from_filename(filename)
    end
    conf["agent"]["holdGenes"].each do |filename|
      hold_genes << get_new_class_object_from_filename(filename)
    end
  # init end

  end
# class end
end
