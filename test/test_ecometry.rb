#require 'helper'

require 'minitest/spec'
require 'minitest/autorun'

require_relative '../lib/ecometry'

describe Ecometry do
  before do
    @ecometry = Ecometry.new
    @record = (1..320).map{' '}.join
  end

  it "converts" do
    @ecometry.to_tapemacs( :tf00_record_type => '00' ).must_equal "00"
    
    @ecometry.to_tapemacs( :tf00_batch_date => '041212' ).must_equal "041212"

    @ecometry.to_tapemacs( :tf00_batch_number => '2' ).must_equal "00000002"
  end

  it "inserts a field into it's place in a record" do
    fields = {
      :tf00_record_type => '00',
      :tf00_batch_number => '2'
    }

    result = @ecometry.insert fields, @record
    result.must_equal "00      00000002                                                                                                                                                                                                                                                                                                                "

  end

  it "converts Record Type 00 (Batch Heder)" do
    batch_header = {
      :tf00_record_type => '00',
      :tf00_batch_date => '040912',
      :tf00_batch_number => '12345678',
      :tf00_record_count => '5',
      :tf00_club_order_type => '?',
    }

    result = @ecometry.insert batch_header, @record
    result.must_equal "00      00000002                                                                                                                                                                                                                                                                                                                "

  end
end
