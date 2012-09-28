module Guard
  class Spinach
    class Runner
      attr_reader :paths

      def initialize(paths, opts=nil)
        @paths = paths
        if opts
          @generate = true if opts[:generate]
        end
      end

      def run
        message = "Running #{paths.empty? ? "all Spinach features" : paths.join(" ")}"
        UI.info message, :reset => true
        system(run_command)
      end

      def run_command
        "spinach #{paths.join(" ")}#{' -g' if @generate}"
      end
    end
  end
end
