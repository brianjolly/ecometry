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
      format[:justified] = :right
      format[:filler] = '0'
    else
      format[:justified] = :left
      format[:filler] = ' '
    end

    format
  end

  def initialize
    load_layout
  end
end
