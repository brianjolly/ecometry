require 'ecometry/layout'

class Ecometry

  #Time::DATE_FORMATS[:year_month_day] = "%y%m%d"
  #Time::DATE_FORMATS[:month_day_year_with_slash] = "%m/%d/%y"

  def create_blank_record
    (1..320).map{' '}.join
  end 

  def to_tapemacs fields
    fields.collect do |field|
      format field
    end.join
  end

  def insert fields, record
    result = String.new(record)

    fields.each do |field|
      position = get_position_for field
      position_start = position.min
      formatted_field = format field

      result.slice! position
      result.insert position_start, formatted_field
    end
    result
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
    key = field[0].to_s
    value = field[1].to_s
    format = get_format_for field

    if format[:numeric]
      value = value.delete('.')
    else
      value = value.upcase
    end

    if value.length > format[:width] 
      raise "The format for #{key} only allows for a length of #{format[:width]} bytes. But '#{value}' is #{value.length} bytes"
    end

    case format[:justified]
    when :right
      value = value.rjust format[:width], format[:filler]
    when :left
      value = value.ljust format[:width], format[:filler]
    end

    value
  end


  # Known formats
  # X(n), 9(n), 9(4)v9(2), 9(4)v99
  def format_factory format_code
    format = {}

    widths = format_code.scan /\((\d+)\)/
    width = widths.flatten.inject(0){ |sum,x| sum.to_i + x.to_i }

    extra_width = !!(format_code.match /v99/ )
    if extra_width; width += 1 end

    format[:width] = width

    is_numeric = !!(format_code.match /^9/ )

    if is_numeric
      format[:numeric] = true
      format[:justified] = :right
      format[:filler] = '0'
    else
      format[:numeric] = false
      format[:justified] = :left
      format[:filler] = ' '
    end

    format
  end

  def initialize
    load_layout
  end
end
