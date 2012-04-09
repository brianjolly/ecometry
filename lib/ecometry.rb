require_relative 'layout'

class Ecometry
  def to_tapemacs fields
    fields.collect do |field|
      format field
    end.join
  end

  def insert fields, record
    fields.each do |field|
      position = get_position_for field
      position_start = position.min
      formatted_field = format field

      record.slice! position
      record.insert position_start, formatted_field
    end
    record
  end

  def position_length_of position
    position.max - position.min
  end

  def get_position_for field
    key = field[0]
    if key && @layout[key]
      r = @layout[key][:position]
      Range.new r.min - 1, r.max - 1
    else
      raise "Position not found for #{key}"
    end
  end

  def get_format_for field
    key = field[0]
    if key && @layout[key]
      format_factory @layout[key][:format]
    else
      raise "Format not found for #{key}"
    end
  end

  def format field
    value = field[1]
    format = get_format_for field
    case format[:justified]
    when :right
      value = value.rjust format[:width], format[:filler]
    when :left
      value = value.ljust format[:width], format[:filler]
    end
    value
  end

  def format_factory format_code
    #"9(29)v9(32)".match /^(.)\((\d+)\).+\((\d+)\)/
    #"X(9)".match /(.)\((\d)\)/
    
    format = {}
    md = format_code.match /^(.)\((\d+)\).+\((\d+)\)/
    if md
      type = md[1]
      dig_width = md[2].to_i
      decimal_width = md[3].to_i
      format[:width] = dig_width
      format[:justified] = :right
      format[:filler] = 0
    else
      md = format_code.match /(.)\((\d)\)/
      if md
        type = md[1]
        width = md[2].to_i

        format[:width] = width
        if type == 'X'
          format[:justified] = :left
          format[:filler] = ' '
        elsif type == '9'
          format[:justified] = :right
          format[:filler] = '0'
        end
      end
    end
    format
  end

  def initialize
    load_layout
  end
end
