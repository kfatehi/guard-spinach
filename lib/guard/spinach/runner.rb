module Guard
  class Spinach
    class Runner
      attr_reader :paths

      def initialize(paths, opts={})
        @paths = paths
        @opts = opts
      end

      def run
        message = "Running #{paths.empty? ? "all Spinach features" : paths.join(" ")}"
        UI.info message, :reset => true
        system(run_command)
      end

      def run_command
        cmd = "spinach #{paths.join(" ")}"
        cmd << ' -g' if @opts[:generate]
        cmd << " -t #{@opts[:tags].join(',')}" if @opts[:tags]
        cmd << ' -b' if @opts[:backtrace]
        cmd
      end
    end
  end
end
