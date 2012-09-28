require 'guard'
require 'guard/guard'

module Guard
  class Spinach < Guard
    def start
      run_all if @options[:all_on_start]
    end

    def run_all
      Runner.new([], @options).run
    end

    def run_on_change(paths)
      Runner.new(paths, @options).run
    end
  end
end

require_relative "spinach/runner"
require_relative "spinach/version"
