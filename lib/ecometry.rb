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
      @layout[key][:format]
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

  def initialize
    @layout = {
      :tf00_record_type => {
        :description => '',
        :format => {
          :format => 'X(2)',
          :width => 2,
          :justified => :left,
          :filler => ' '
        },
        :position => (1..2),
        :required => true,
        :require_at_least_one => false
      },

      :tf00_batch_date => {
        :description => '',
        :format => {
          :format => '9(6)',
          :width => 6,
          :justified => :right,
          :filler => '0'
        },
        :position => (3..8),
        :required => true,
        :require_at_least_one => false
      },

      :tf00_batch_number => {
        :description => '',
        :format => {
          :format => '9(8)',
          :width => 8,
          :justified => :right,
          :filler => '0'
        },
        :position => (9..16),
        :required => false,
        :require_at_least_one => false
      },

      :tf00_record_count => {
        :description => '',
        :format => {
          :format => '9(8)',
          :width => 8,
          :justified => :right,
          :filler => '0'
        },
        :position => (17..24),
        :required => true,
        :require_at_least_one => false
      },

      :tf00_club_order_type => {
        :description => '',
        :format => {
          :format => 'X(1)',
          :width => 1,
          :justified => :left,
          :filler => ' '
        },
        :position => (25..25),
        :required => false,
        :require_at_least_one => false
      },

      :tf00_filer => {
        :description => 'Spaces',
        :format => {
          :format => 'X(295)',
          :width => 295,
          :justified => :left,
          :filler => ' '
        },
        :position => (26..320),
        :required => false,
        :require_at_least_one => false
      }
    }
  end
end
