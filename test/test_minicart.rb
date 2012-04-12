require 'helper'

describe Ecometry do
  before do
    @ecometry = Ecometry.new
    @record = (1..320).map{' '}.join
  end

  it "converts Record Type 10" do
    #customer = self.buyer_purchases[0].customer
    #payment_info = self.buyer_purchases[0].payment_info
    #bill_to_address = self.buyer_purchases[0].customer.bill_to_address

    customer = { title: "Title", first_name: "First", last_name: "Last", day_phone: "6505551212", evening_phone: "6505551212", email: "thing@thing.com", gender: nil, accept_terms: false, created_at: "2012-04-12 01:49:06", updated_at: "2012-04-12 01:49:06", campaign_id: 1, ip_address: nil }
    payment_info = { id: 313, buyer_purchase_id: nil, customer_id: 1, payment_method: "VI", encrypted_card_number: "RrlvH20mGHVf2GZXESBJ8fb8/vcCvaIxXtRedfKOlSCIY78cz6R...", expiration_date: "04/2013", security_code: "123", last_four: "1111", clear_date: nil, created_at: "2012-04-12 01:49:06", updated_at: "2012-04-12 01:49:06", expiration_month: 4, expiration_year: 2013 }
    bill_to_address = {  id: 980191107, first_name: "First", last_name: "Last", address_1: "Adress 1", address_2: nil, city: "City", state: "CA", zip: "12345", country: nil, type: "BillToAddress", customer_id: 1, created_at: "2012-04-12 01:49:06", updated_at: "2012-04-12 01:49:06" }

    batch_header = {
      :tf10_rec_type => '10',
      :tf10_order_no => '2030919',
      :tf10_source_offer => '188732',
      :tf10_mail_date => '04/08/12',
      :tf10_pay_method => payment_info[:payment_method],
      :tf10_fname => customer[:first_name],
      :tf10_lname => customer[:last_name],
      :tf10_street => bill_to_address[:address_1],
      :tf10_city => bill_to_address[:city],
      :tf10_state => bill_to_address[:state],
      :tf10_zip_code => bill_to_address[:zip],
      :tf10_day_phone => customer[:day_phone]
    }

    puts batch_header
    puts @record.length

    result = @ecometry.insert batch_header, @record
    result.must_equal = "10 2030919188732          04/08/12VIFirst            Last                                                                                                        Adress 1                      City                          CA12345             6505551212                                                                     "
  end
end
