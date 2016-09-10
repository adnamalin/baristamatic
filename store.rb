
require_relative 'drink'

class Store

  def initialize(args = {})
    @inventory = args.options.fetch(:greeting, "Hello")
  end

end
