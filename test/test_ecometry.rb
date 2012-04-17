require 'helper'

#
# NOTE 
# contain sub fields
# tf17_coupon_info, tf18_gift_cert_info
#

describe Ecometry do
  before do
    @ecometry = Ecometry.new
    @record = (1..320).map{' '}.join
  end

  describe "format serializer" do
    it "understands X(n)" do
      format = @ecometry.format_factory "X(4)"
      format.must_equal( { :justified => :left, :filler => ' ', :width => 4 })
    end

    it "understands 9(n)" do
      format = @ecometry.format_factory "9(4)"
      format.must_equal( { :justified => :right, :filler => '0', :width => 4 })
    end

    it "understands 9(n)v9(n)" do
      format = @ecometry.format_factory "9(4)v9(2)"
      format.must_equal( { :justified => :right, :filler => '0', :width => 6 })
    end

    it "understands 9(n)v99" do
      format = @ecometry.format_factory "9(5)v99"
      format.must_equal( { :justified => :right, :filler => '0', :width => 6 })
    end
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
    result.must_equal "000409121234567800000005?                                                                                                                                                                                                                                                                                                       "
  end

  it "converts Record Type 10 (Buyer Information)" do
    fields = {
      :tf10_rec_type => '10',
      :tf10_order_no => '2030919',
      :tf10_source_offer => '188732',
      :tf10_mail_date => '03/21/11',
      :tf10_pay_method => 'MC',
      :tf10_fname => 'THOMAS',
      :tf10_lname => 'HOLTZ',
      :tf10_street => '17130 RIDGE CANYON DR.',
      :tf10_city => 'RIVERSIDE',
      :tf10_state => 'CA',
      :tf10_zip_code => '92506',
      :tf10_day_phone => '9517800471'
    }

    result = @ecometry.insert fields, @record

    result.must_equal "10 2030919188732          03/21/11MCTHOMAS           HOLTZ                                                                                                       17130 RIDGE CANYON DR.        RIVERSIDE                     CA92506             9517800471                                                                     "
  end

  it "converts Record Type 15 (Additional Order Information)" do
    fields ={
      :tf15_rec_type => '15',
      :tf15_order_no => '2030919',
      :tf15_purchase_ord => '302030919',
      :tf15_entered_by => 'JSCBATCH',
      :tf15_so_flag => 'N',
      :tf15_order_xref => '302030919'
    }

    result = @ecometry.insert fields, @record

    result.must_equal "15 2030919                302030919                         JSCBATCH       N                                                                                                                                      302030919                                                                                                     "
  end

  it "converts Record Type 20 (Credit Card Information)" do
    fields = {
      :tf20_rec_type => '20',
      :tf20_order_no => '2030919',
      :tf20_cc_type => 'VI',
      :tf20_cc_card_no => '4111111111111111',
      :tf20_exp_month => '10',
      :tf20_exp_year => '12'
    }

    result = @ecometry.insert fields, @record

    result.must_equal "20 2030919VI4111111111111111    1210                                                                                                                                                                                                                                                                                            "
    
  end

  it "converts Record Type 40 (Line-Item Informatiion)" do
    fields = {
      :tf40_rec_type => '40',
      :tf40_order_no => '2030919',
      :tf40_quantity => '5',
      :tf40_item_no => 'GE13',
      :tf40_tax_amt => '0',
      :tf40_tax_exem => 'N',
      :tf40_ship_meth => '24',
      :tf40_p_h_amt => '0',
      :tf40_price => '1959',
      :tf40_overide_price => 'Y'
    }

    result = @ecometry.insert fields, @record
    result.must_equal "40 2030919  0005                                                                     GE13                0000000      N240000000000001959                                                                                                                                                                             Y         "
  end
end
