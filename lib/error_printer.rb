require 'colorize'

class ErrorFile
  attr_reader :line, :error, :severity

  def initialize(line, error, severity)
    @line = line
    @error = error
    @severity = severity
  end

  def color_severity
    case @severity
    when 'warning' then @severity.colorize(:yellow)
    when 'error' then 'error!  '.colorize(:red)
    else
      @severity.colorize(:light_blue)
    end
  end
end
