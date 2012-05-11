class Ecometry
  def load_layout
    @layout = {
      :tf00_record_type => {
        :description => "Record Type 00: Batch header (1 per batch)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf00_batch_date => {
        :description => "Creation date of batch (yymmdd)",
        :format => "9(6)",
        :length => 6,
        :position => (3..8),
        :required => true,
        :required_once => false
      },
      :tf00_batch_number => {
        :description => "Control number assign by telemarketing company (increment for each batch)",
        :format => "9(8)",
        :length => 8,
        :position => (9..16),
        :required => false,
        :required_once => false
      },
      :tf00_record_count => {
        :description => "Total number of records",
        :format => "9(8)",
        :length => 8,
        :position => (17..24),
        :required => true,
        :required_once => false
      },
      :tf00_club_order_type => {
        :description => "Clubs order type",
        :format => "X(1)",
        :length => 1,
        :position => (25..25),
        :required => false,
        :required_once => false
      },
      :tf00_filler => {
        :description => "Spaces",
        :format => "X(295)",
        :length => 1,
        :position => (26..320),
        :required => false,
        :required_once => false
      },
      :tf10_rec_type => {
        :description => "Record Type 10: Buyer information (1 per order)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf10_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf10_order_no => {
        :description => "Order number",
        :format => "9(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf10_source_offer => {
        :description => "Source code offer",
        :format => "X(8)",
        :length => 8,
        :position => (11..18),
        :required => false,
        :required_once => false
      },
      :tf10_source_use => {
        :description => "Source code use",
        :format => "X(8)",
        :length => 8,
        :position => (19..26),
        :required => false,
        :required_once => false
      },
      :tf10_mail_date => {
        :description => "Mail date of order (mmddyy) (Default = current date)",
        :format => "X(8)",
        :length => 8,
        :position => (27..34),
        :required => false,
        :required_once => false
      },
      :tf10_pay_method => {
        :description => "Pay method (Code descriptions, type PM)",
        :format => "X(2)",
        :length => 2,
        :position => (35..36),
        :required => true,
        :required_once => false
      },
      :tf10_fname => {
        :description => "First name",
        :format => "X(16)",
        :length => 16,
        :position => (37..52),
        :required => false,
        :required_once => true
      },
      :tf10_mi => {
        :description => "Middle initial",
        :format => "X(1)",
        :length => 1,
        :position => (53..53),
        :required => false,
        :required_once => false
      },
      :tf10_lname => {
        :description => "Last name",
        :format => "X(16)",
        :length => 16,
        :position => (54..69),
        :required => false,
        :required_once => true
      },
      :tf10_title_code => {
        :description => "Title code",
        :format => "X(2)",
        :length => 2,
        :position => (70..71),
        :required => false,
        :required_once => false
      },
      :tf10_co_name => {
        :description => "Company name",
        :format => "X(30)",
        :length => 30,
        :position => (72..101),
        :required => false,
        :required_once => true
      },
      :tf10_ref1 => {
        :description => "Address reference line 1",
        :format => "X(30)",
        :length => 30,
        :position => (102..131),
        :required => false,
        :required_once => false
      },
      :tf10_ref2 => {
        :description => "Address reference line 2",
        :format => "X(30)",
        :length => 30,
        :position => (132..161),
        :required => false,
        :required_once => false
      },
      :tf10_street => {
        :description => "Street address or PO Box number",
        :format => "X(30)",
        :length => 30,
        :position => (162..191),
        :required => true,
        :required_once => false
      },
      :tf10_city => {
        :description => "City",
        :format => "X(30)",
        :length => 30,
        :position => (192..221),
        :required => true,
        :required_once => false
      },
      :tf10_state => {
        :description => "State (enter FN if foreign)",
        :format => "X(2)",
        :length => 2,
        :position => (222..223),
        :required => true,
        :required_once => false
      },
      :tf10_zip_code => {
        :description => "Zip Code",
        :format => "X(14)",
        :length => 14,
        :position => (224..237),
        :required => true,
        :required_once => false
      },
      :tf10_country_code => {
        :description => "Country Code (required only if state = FN)",
        :format => "X(4)",
        :length => 4,
        :position => (238..241),
        :required => false,
        :required_once => false
      },
      :tf10_day_phone => {
        :description => "Day phone number",
        :format => "X(14)",
        :length => 14,
        :position => (242..255),
        :required => false,
        :required_once => false
      },
      :tf10_ngt_phone => {
        :description => "Night phone number",
        :format => "X(14)",
        :length => 14,
        :position => (256..269),
        :required => false,
        :required_once => false
      },
      :tf10_old_custno => {
        :description => "Cross reference to customer",
        :format => "X(16)",
        :length => 16,
        :position => (270..285),
        :required => false,
        :required_once => false
      },
      :tf10_birth_date => {
        :description => "Customer's birth date in ccyymmdd format, used with the Bill Me Later pay method.",
        :format => "X(8)",
        :length => 8,
        :position => (286..293),
        :required => false,
        :required_once => false
      },
      :tf10_cust_no => {
        :description => "Ecometry customer number",
        :format => "9(9)",
        :length => 9,
        :position => (294..302),
        :required => false,
        :required_once => false
      },
      :tf10_cust_chkdig => {
        :description => "Customer number check digit",
        :format => "X(1)",
        :length => 1,
        :position => (303..303),
        :required => false,
        :required_once => false
      },
      :tf10_cust_edp => {
        :description => "Customer EDP number (Ecometry Internal)",
        :format => "9(9)",
        :length => 9,
        :position => (304..312),
        :required => false,
        :required_once => false
      },
      :tf10_no_promo => {
        :description => "Do not promote",
        :format => "9(1)",
        :length => 14,
        :position => (313..313),
        :required => false,
        :required_once => false
      },
      :tf10_no_rent => {
        :description => "Do not rent",
        :format => "X(1)",
        :length => 1,
        :position => (314..314),
        :required => false,
        :required_once => false
      },
      :tf10_repl_addr => {
        :description => "Address replacement flag",
        :format => "X(1)",
        :length => 1,
        :position => (315..315),
        :required => false,
        :required_once => false
      },
      :tf10_filler => {
        :description => "Spaces",
        :format => "X(5)",
        :length => 5,
        :position => (316..320),
        :required => false,
        :required_once => false
      },
      :tf11_rec_type => {
        :description => "Record Type 11: Customer inquiries. (If Record Type 11 exists, there will not be a Record Type 10)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf11_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf11_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf11_source_offer => {
        :description => "Source code offer",
        :format => "X(8)",
        :length => 8,
        :position => (11..18),
        :required => false,
        :required_once => false
      },
      :tf11_source_use => {
        :description => "Source code use",
        :format => "X(8)",
        :length => 8,
        :position => (19..26),
        :required => false,
        :required_once => false
      },
      :tf11_first_date => {
        :description => "First date of inquiry (mmddyy)",
        :format => "X(8)",
        :length => 8,
        :position => (27..34),
        :required => true,
        :required_once => false
      },
      :tf11_fname => {
        :description => "First name",
        :format => "X(16)",
        :length => 16,
        :position => (35..50),
        :required => false,
        :required_once => true
      },
      :tf11_mi => {
        :description => "Middle initial",
        :format => "X(1)",
        :length => 1,
        :position => (51..51),
        :required => false,
        :required_once => false
      },
      :tf11_lname => {
        :description => "Last name",
        :format => "X(16)",
        :length => 16,
        :position => (52..67),
        :required => false,
        :required_once => true
      },
      :tf11_title_code => {
        :description => "Title code",
        :format => "X(2)",
        :length => 2,
        :position => (68..69),
        :required => false,
        :required_once => false
      },
      :tf11_co_name => {
        :description => "Company name",
        :format => "X(30)",
        :length => 30,
        :position => (70..99),
        :required => false,
        :required_once => true
      },
      :tf11_ref1 => {
        :description => "Address reference line 1",
        :format => "X(30)",
        :length => 30,
        :position => (100..129),
        :required => false,
        :required_once => false
      },
      :tf11_ref2 => {
        :description => "Address reference line 2",
        :format => "X(30)",
        :length => 30,
        :position => (130..159),
        :required => false,
        :required_once => false
      },
      :tf11_street => {
        :description => "Street address or PO Box number",
        :format => "X(30)",
        :length => 30,
        :position => (160..189),
        :required => true,
        :required_once => false
      },
      :tf11_city => {
        :description => "City",
        :format => "X(30)",
        :length => 30,
        :position => (190..219),
        :required => true,
        :required_once => false
      },
      :tf11_state => {
        :description => "State (enter FN if foreign)",
        :format => "X(2)",
        :length => 2,
        :position => (220..221),
        :required => true,
        :required_once => false
      },
      :tf11_zip_code => {
        :description => "Zip Code",
        :format => "X(14)",
        :length => 14,
        :position => (222..235),
        :required => true,
        :required_once => false
      },
      :tf11_phone_number => {
        :description => "Phone number",
        :format => "X(14)",
        :length => 14,
        :position => (236..249),
        :required => false,
        :required_once => false
      },
      :tf11_country_code => {
        :description => "Country code (required only if state = FN)",
        :format => "X(4)",
        :length => 4,
        :position => (250..253),
        :required => false,
        :required_once => false
      },
      :tf11_old_custnum => {
        :description => "Cross reference to inquiry",
        :format => "X(18)",
        :length => 18,
        :position => (254..271),
        :required => false,
        :required_once => false
      },
      :tf11_sw_issue_no => {
        :description => "Switch card issue number",
        :format => "X(2)",
        :length => 2,
        :position => (272..273),
        :required => false,
        :required_once => false
      },
      :tf11_sw_start_date => {
        :description => "Switch card start date yymm format",
        :format => "X(4)",
        :length => 4,
        :position => (274..277),
        :required => false,
        :required_once => false
      },
      :tf11_cust_type => {
        :description => "Customer type code",
        :format => "X(2)",
        :length => 2,
        :position => (278..279),
        :required => false,
        :required_once => false
      },
      :tf11_cc_type => {
        :description => "Credit card type",
        :format => "X(2)",
        :length => 2,
        :position => (280..281),
        :required => false,
        :required_once => false
      },
      :tf11_card_no => {
        :description => "Credit card number",
        :format => "X(20)",
        :length => 20,
        :position => (282..301),
        :required => false,
        :required_once => false
      },
      :tf11_exp_year => {
        :description => "Credit card expiration year",
        :format => "X(2)",
        :length => 2,
        :position => (302..303),
        :required => false,
        :required_once => false
      },
      :tf11_exp_month => {
        :description => "Credit card expiration month",
        :format => "X(2)",
        :length => 2,
        :position => (304..305),
        :required => false,
        :required_once => false
      },
      :tf11_error_code => {
        :description => "Error code",
        :format => "X(1)",
        :length => 1,
        :position => (306..306),
        :required => false,
        :required_once => false
      },
      :tf11_fax_number => {
        :description => "Fax number",
        :format => "X(14)",
        :length => 14,
        :position => (307..320),
        :required => false,
        :required_once => false
      },
      :tf12_rec_type => {
        :description => "Record Type 12: Payer information (optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf12_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf12_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf12_filler1 => {
        :description => "Spaces",
        :format => "X(24)",
        :length => 24,
        :position => (11..34),
        :required => false,
        :required_once => false
      },
      :tf12_fname => {
        :description => "First name",
        :format => "X(16)",
        :length => 16,
        :position => (35..50),
        :required => false,
        :required_once => true
      },
      :tf12_mi => {
        :description => "Middle initial",
        :format => "X(1)",
        :length => 1,
        :position => (51..51),
        :required => false,
        :required_once => false
      },
      :tf12_lname => {
        :description => "Last name",
        :format => "X(16)",
        :length => 16,
        :position => (52..67),
        :required => false,
        :required_once => true
      },
      :tf12_title_code => {
        :description => "Title code",
        :format => "X(2)",
        :length => 2,
        :position => (68..69),
        :required => false,
        :required_once => false
      },
      :tf12_co_name => {
        :description => "Company name",
        :format => "X(30)",
        :length => 30,
        :position => (70..99),
        :required => false,
        :required_once => true
      },
      :tf12_ref1 => {
        :description => "Address reference line 1",
        :format => "X(30)",
        :length => 30,
        :position => (100..129),
        :required => false,
        :required_once => false
      },
      :tf12_ref2 => {
        :description => "Address reference line 2",
        :format => "X(30)",
        :length => 30,
        :position => (130..159),
        :required => false,
        :required_once => false
      },
      :tf12_street => {
        :description => "Street address or PO Box number",
        :format => "X(30)",
        :length => 30,
        :position => (160..189),
        :required => true,
        :required_once => false
      },
      :tf12_city => {
        :description => "City",
        :format => "X(30)",
        :length => 30,
        :position => (190..219),
        :required => true,
        :required_once => false
      },
      :tf12_state => {
        :description => "State (enter FN if foreign)",
        :format => "X(2)",
        :length => 2,
        :position => (220..221),
        :required => true,
        :required_once => false
      },
      :tf12_zip_code => {
        :description => "Zip Code",
        :format => "X(14)",
        :length => 14,
        :position => (222..235),
        :required => true,
        :required_once => false
      },
      :tf12_phone_number => {
        :description => "Phone number",
        :format => "X(14)",
        :length => 14,
        :position => (236..249),
        :required => false,
        :required_once => false
      },
      :tf12_country_code => {
        :description => "Country code (required only if state = FN)",
        :format => "X(4)",
        :length => 4,
        :position => (250..253),
        :required => false,
        :required_once => false
      },
      :tf12_old_cust_no => {
        :description => "Cross reference to customer",
        :format => "X(24)",
        :length => 24,
        :position => (254..277),
        :required => false,
        :required_once => false
      },
      :tf12_cust_no => {
        :description => "Ecometry customer number",
        :format => "9(9)",
        :length => 9,
        :position => (278..286),
        :required => false,
        :required_once => false
      },
      :tf12_chk_dig => {
        :description => "Customer number check digit",
        :format => "X(1)",
        :length => 1,
        :position => (287..287),
        :required => false,
        :required_once => false
      },
      :tf12_repl_addr => {
        :description => "Address replacement flag",
        :format => "X(1)",
        :length => 1,
        :position => (288..288),
        :required => false,
        :required_once => false
      },
      :tf12_filler3 => {
        :description => "Spaces",
        :format => "X(32)",
        :length => 32,
        :position => (289..320),
        :required => false,
        :required_once => false
      },
      :tf13_rec_type => {
        :description => "Record Type 13: Payer information (optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf13_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf13_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf13_email_addr => {
        :description => "Customer's email address",
        :format => "X(47)",
        :length => 47,
        :position => (11..57),
        :required => false,
        :required_once => false
      },
      :tf13_filler => {
        :description => "Internal use only",
        :format => "X(3)",
        :length => 3,
        :position => (58..60),
        :required => false,
        :required_once => false
      },
      :tf13_net_pass => {
        :description => "User internet password",
        :format => "X(16)",
        :length => 16,
        :position => (61..76),
        :required => false,
        :required_once => false
      },
      :tf13_reserved_area => {
        :description => "Reserved for future use",
        :format => "X(84)",
        :length => 84,
        :position => (77..160),
        :required => false,
        :required_once => false
      },
      :tf13_web_order_flag => {
        :description => "Passing a value of Y in this field causes Ecometry to flag this order as one that came from an e-commerce channel. A value of Y in this field indicates that it is Batch Order flagged as web.",
        :format => "X(1)",
        :length => 1,
        :position => (161..161),
        :required => false,
        :required_once => false
      },
      :tf13_ssn => {
        :description => "The last four digits of the customer's Social Security Number used as part of the authorization data for a Bill Me Later Order; this data should be preceded by five zeros.",
        :format => "X(9)",
        :length => 9,
        :position => (162..170),
        :required => false,
        :required_once => false
      },
      :tf13_filler => {
        :description => "Filler",
        :format => "X(150)",
        :length => 150,
        :position => (171..320),
        :required => false,
        :required_once => false
      },
      :tf15_rec_type => {
        :description => "Record Type 15: Additional order information",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf15_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf15_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf15_remit_amt => {
        :description => "Amount remitted (pre-paid order only)",
        :format => "9(6)v9(2)",
        :length => 6.2,
        :position => (11..18),
        :required => false,
        :required_once => false
      },
      :tf15_future_code => {
        :description => "User-defined future-order date code. For example, date-code X could be 12/20/05.",
        :format => "X(1)",
        :length => 1,
        :position => (19..19),
        :required => false,
        :required_once => false
      },
      :tf15_future_fil => {
        :description => "If TF15-FUTURE-CODE is a date code, this field is blank. If a date is used. TF15-FUTURE-CODE and this field are used together to contain the 8-character date (mm/dd/yy).",
        :format => "X(7)",
        :length => 7,
        :position => (20..26),
        :required => false,
        :required_once => false
      },
      :tf15_purchase_ord => {
        :description => "Purchase order number",
        :format => "X(20)",
        :length => 20,
        :position => (27..46),
        :required => false,
        :required_once => false
      },
      :tf15_entered_date => {
        :description => "Order entry date (default = current date) (mm/dd/yy)",
        :format => "X(8)",
        :length => 8,
        :position => (47..54),
        :required => false,
        :required_once => false
      },
      :tf15_entered_time => {
        :description => "Order entry date (default = current date) (hhmmss)",
        :format => "X(6)",
        :length => 6,
        :position => (55..60),
        :required => false,
        :required_once => false
      },
      :tf15_entered_by => {
        :description => "Operator's name (default = Batch Order)",
        :format => "X(8)",
        :length => 8,
        :position => (61..68),
        :required => false,
        :required_once => false
      },
      :tf15_hld_complt_sw => {
        :description => "Hold order until complete (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (69..69),
        :required => false,
        :required_once => false
      },
      :tf15_expedite_ord => {
        :description => "Expedite order (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (70..70),
        :required => false,
        :required_once => false
      },
      :tf15_no_bo => {
        :description => "Cancel if on backorder (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (71..71),
        :required => false,
        :required_once => false
      },
      :tf15_postpone_ord => {
        :description => "Wait for customer (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (72..72),
        :required => false,
        :required_once => false
      },
      :tf15_no_insurance => {
        :description => "Do not charge insurance (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (73..73),
        :required => false,
        :required_once => false
      },
      :tf15_cc_up_frnt_override => {
        :description => "Override offer CC bill up front (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (74..74),
        :required => false,
        :required_once => false
      },
      :tf15_overpayment => {
        :description => "Apply overpayment to old open debits (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (75..75),
        :required => false,
        :required_once => false
      },
      :tf15_so_flag => {
        :description => "Standing order",
        :format => "X(1)",
        :length => 1,
        :position => (76..76),
        :required => false,
        :required_once => false
      },
      :tf15_gender => {
        :description => "Gender code for customer's gender",
        :format => "X(1)",
        :length => 1,
        :position => (77..77),
        :required => false,
        :required_once => false
      },
      :tf15_filler1 => {
        :description => "Spaces",
        :format => "X(5)",
        :length => 5,
        :position => (78..82),
        :required => false,
        :required_once => false
      },
      :tf15_opt_table1 => {
        :description => "",
        :format => "X(4)",
        :length => 4,
        :position => (83..86),
        :required => false,
        :required_once => false
      },
      :tf15_ship_meth => {
        :description => "Ship method for the order's Buyer. Refer to the Determining the Ship Method for Batch Orders topic in Batch Order Production for a discussion of how this field is used.",
        :format => "X(2)",
        :length => 2,
        :position => (87..88),
        :required => false,
        :required_once => false
      },
      :tf15_demographics => {
        :description => "Demographic information. The 100 characters of demographics data is composed of two 50-character strings.",
        :format => "X(100)",
        :length => 100,
        :position => (89..188),
        :required => false,
        :required_once => false
      },
      :tf15_sales_terr => {
        :description => "Sales territory (OA orders)",
        :format => "X(4)",
        :length => 4,
        :position => (189..192),
        :required => false,
        :required_once => false
      },
      :tf15_sales_rep => {
        :description => "Sales representative code (OA orders)",
        :format => "X(4)",
        :length => 4,
        :position => (193..196),
        :required => false,
        :required_once => false
      },
      :tf15_fax_no => {
        :description => "Buyer's fax number",
        :format => "X(14)",
        :length => 14,
        :position => (197..210),
        :required => false,
        :required_once => false
      },
      :tf15_order_xref => {
        :description => "Order number cross reference",
        :format => "X(24)",
        :length => 24,
        :position => (211..234),
        :required => false,
        :required_once => false
      },
      :tf15_cust_type => {
        :description => "Customer type code",
        :format => "X(2)",
        :length => 2,
        :position => (235..236),
        :required => false,
        :required_once => false
      },
      :tf15_error_flag => {
        :description => "Reject routing indicator (reject reason code, as defined in Code Descriptions, type TP)",
        :format => "X(1)",
        :length => 1,
        :position => (237..237),
        :required => false,
        :required_once => false
      },
      :tf15_installments => {
        :description => "Number of installments",
        :format => "X(1)",
        :length => 1,
        :position => (238..238),
        :required => false,
        :required_once => false
      },
      :tf15_ship_date => {
        :description => "Ship date (mm/dd/yy) (default = current date)",
        :format => "X(8)",
        :length => 8,
        :position => (239..246),
        :required => false,
        :required_once => false
      },
      :tf15_user_hold_code => {
        :description => "User hold code",
        :format => "X(1)",
        :length => 1,
        :position => (247..247),
        :required => false,
        :required_once => false
      },
      :tf15_bank_acct_no => {
        :description => "Bank account number",
        :format => "X(24)",
        :length => 24,
        :position => (248..271),
        :required => false,
        :required_once => false
      },
      :tf15_rut_no => {
        :description => "Chilean Citizen Identification Number",
        :format => "X(10)",
        :length => 10,
        :position => (272..281),
        :required => false,
        :required_once => false
      },
      :tf15_filler2 => {
        :description => "Spaces",
        :format => "X(17)",
        :length => 17,
        :position => (282..298),
        :required => false,
        :required_once => false
      },
      :tf15_if_continuity => {
        :description => "Continuity flag (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (299..299),
        :required => false,
        :required_once => false
      },
      :tf15_if_bypass_adv => {
        :description => "Address verify bypass (Y/N): Used for continuity orders only.",
        :format => "X(1)",
        :length => 1,
        :position => (300..300),
        :required => false,
        :required_once => false
      },
      :tf15_disc_one => {
        :description => "Discount Code1",
        :format => "X(1)",
        :length => 1,
        :position => (301..301),
        :required => false,
        :required_once => false
      },
      :tf15_disc_two => {
        :description => "Discount Code2",
        :format => "X(1)",
        :length => 1,
        :position => (302..302),
        :required => false,
        :required_once => false
      },
      :tf15_fedex_acct_no => {
        :description => "Third party FedEx account number.",
        :format => "X(9)",
        :length => 9,
        :position => (303..311),
        :required => false,
        :required_once => false
      },
      :tf15_ups_acct_no => {
        :description => "Third party UPS account number.",
        :format => "X(6)",
        :length => 6,
        :position => (312..317),
        :required => false,
        :required_once => false
      },
      :tf15_sat_del => {
        :description => "Saturday Delivery Flag",
        :format => "X(1)",
        :length => 1,
        :position => (318..318),
        :required => false,
        :required_once => false
      },
      :tf15_filler3 => {
        :description => "Spaces",
        :format => "X(2)",
        :length => 2,
        :position => (319..320),
        :required => false,
        :required_once => false
      },
      :tf16_rec_type => {
        :description => "Record Type 16: Customer comments",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf16_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf16_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf16_comment1 => {
        :description => "First 60 character customer comment",
        :format => "X(60)",
        :length => 60,
        :position => (11..70),
        :required => true,
        :required_once => false
      },
      :tf16_comment2 => {
        :description => "Second 60 character customer comment",
        :format => "X(60)",
        :length => 60,
        :position => (71..130),
        :required => true,
        :required_once => false
      },
      :tf16_prt_on_pkslp1 => {
        :description => "Print first comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (131..131),
        :required => false,
        :required_once => false
      },
      :tf16_prt_on_label1 => {
        :description => "Print first comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (132..132),
        :required => false,
        :required_once => false
      },
      :tf16_filler => {
        :description => "Spaces",
        :format => "X(1)",
        :length => 1,
        :position => (133..133),
        :required => false,
        :required_once => false
      },
      :tf16_prt_on_pkslp2 => {
        :description => "Print second comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (134..134),
        :required => false,
        :required_once => false
      },
      :tf16_prt_on_label2 => {
        :description => "Print second comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (135..135),
        :required => false,
        :required_once => false
      },
      :tf16_filler => {
        :description => "Spaces",
        :format => "X(185)",
        :length => 185,
        :position => (136..320),
        :required => false,
        :required_once => false
      },
      :tf17_rec_type => {
        :description => "Record Type 17: Coupon information",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf17_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf17_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf17_coupon_info => {
        :description => "Eighteen occurrences of the 17-byte coupon sub-record shown in Table 4.14",
        :format => "X(306)",
        :length => 7,
        :position => (11..316),
        :required => false,
        :required_once => false
      },
      :tf17_filler => {
        :description => "Spaces",
        :format => "X(4)",
        :length => 4,
        :position => (317..320),
        :required => false,
        :required_once => false
      },
      :tf17_coupon_no => {
        :description => "The entry in this field is either a Coupon/Gift Certificate Number or a Discount Table Number",
        :format => "X(9)",
        :length => 9,
        :position => (1..9),
        :required => false,
        :required_once => false
      },
      :tf17_percent_off => {
        :description => "Percentage off as stated in the coupon",
        :format => "9(2)",
        :length => 2,
        :position => (10..11),
        :required => false,
        :required_once => false
      },
      :tf17_dollar_off => {
        :description => "Dollar value off as stated in the coupon",
        :format => "9(4)v9(2)",
        :length => 6,
        :position => (12..17),
        :required => false,
        :required_once => false
      },
      :tf18_rec_type => {
        :description => "Record Type 18: Partial Gift Certificate information",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf18_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf18_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => false,
        :required_once => false
      },
      :tf18_gift_cert_info => {
        :description => "Twenty occurrences of the 18-byte Gift Certificate sub-record shown in Table 4.16",
        :format => "X(180)",
        :length => 180,
        :position => (11..190),
        :required => false,
        :required_once => false
      },
      :tf18_filler => {
        :description => "Spaces",
        :format => "X(130)",
        :length => 130,
        :position => (191..320),
        :required => false,
        :required_once => false
      },
      :tf18_gift_cert_no => {
        :description => "The entry in this field is the Gift Certificate number plus the check digit. The check digit is the last position of the Gift Certificate number that prints on both the Gift Certificate and the Gift Certificate Register.",
        :format => "X(9)",
        :length => 9,
        :position => (1..9),
        :required => false,
        :required_once => false
      },
      :tf18_gc_redeem_amt => {
        :description => "Redeemed amount for Gift Certificate",
        :format => "9(7)v9(2)",
        :length => 9,
        :position => (10..18),
        :required => false,
        :required_once => false
      },
      :tf20_rec_type => {
        :description => "Record Type 20: Credit card information",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf20_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf20_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf20_cc_type => {
        :description => "Credit card type (Code Descriptions, type PM)",
        :format => "X(2)",
        :length => 2,
        :position => (11..12),
        :required => true,
        :required_once => false
      },
      :tf20_cc_card_no => {
        :description => "Credit card number",
        :format => "X(20)",
        :length => 20,
        :position => (13..32),
        :required => true,
        :required_once => false
      },
      :tf20_exp_year => {
        :description => "Credit card expiration year",
        :format => "X(2)",
        :length => 2,
        :position => (33..34),
        :required => true,
        :required_once => false
      },
      :tf20_exp_month => {
        :description => "Credit card expiration month",
        :format => "d(2)",
        :length => 2,
        :position => (35..36),
        :required => true,
        :required_once => false
      },
      :tf20_auth_code => {
        :description => "Credit card authorization code",
        :format => "X(6)",
        :length => 6,
        :position => (37..42),
        :required => false,
        :required_once => false
      },
      :tf20_auth_flag => {
        :description => "CC authorization flag",
        :format => "X(1)",
        :length => 1,
        :position => (43..43),
        :required => false,
        :required_once => false
      },
      :tf20_sw_issue_no => {
        :description => "Switch card issue number",
        :format => "X(2)",
        :length => 2,
        :position => (44..45),
        :required => false,
        :required_once => false
      },
      :tf20_sw_start_date => {
        :description => "Switch card start date yymm format",
        :format => "X(4)",
        :length => 4,
        :position => (46..49),
        :required => false,
        :required_once => false
      },
      :tf20_security_code_number => {
        :description => "CC Security Code",
        :format => "X(4)",
        :length => 4,
        :position => (50..53),
        :required => false,
        :required_once => false
      },
      :tf20_cc_resp_code => {
        :description => "Credit card response code",
        :format => "X(4)",
        :length => 4,
        :position => (54..57),
        :required => false,
        :required_once => false
      },
      :tf20_bml_promo_code => {
        :description => "Bill Me Later promo code",
        :format => "9(4)",
        :length => 4,
        :position => (58..61),
        :required => false,
        :required_once => false
      },
      :tf20_bml_pay_div_no => {
        :description => "Bill Me Later Payment Division Number",
        :format => "9(6)",
        :length => 6,
        :position => (62..67),
        :required => false,
        :required_once => false
      },
      :tf20_filler => {
        :description => "Spaces",
        :format => "X(253)",
        :length => 253,
        :position => (68..320),
        :required => false,
        :required_once => false
      },
      :tf21_rec_type => {
        :description => "Record Type 21: Order comments (optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf21_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf21_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf21_comment1 => {
        :description => "First 60 character order comment",
        :format => "X(60)",
        :length => 60,
        :position => (11..70),
        :required => true,
        :required_once => false
      },
      :tf21_comment2 => {
        :description => "Second 60 character order comment",
        :format => "X(60)",
        :length => 60,
        :position => (71..130),
        :required => true,
        :required_once => false
      },
      :tf21_prt_on_pkslp1 => {
        :description => "Print first comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (131..131),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_label1 => {
        :description => "Print first comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (132..132),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_greet1 => {
        :description => "Print first comment on warehouse label",
        :format => "X(1)",
        :length => 1,
        :position => (133..133),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_pkslp2 => {
        :description => "Print second comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (134..134),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_label2 => {
        :description => "Print second comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (135..135),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_greet2 => {
        :description => "Print second comment on warehouse label",
        :format => "X(1)",
        :length => 1,
        :position => (136..136),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_voice1 => {
        :description => "Print first comment on invoice",
        :format => "X(1)",
        :length => 1,
        :position => (137..137),
        :required => false,
        :required_once => false
      },
      :tf21_prt_on_voice2 => {
        :description => "Print second comment on invoice",
        :format => "X(1)",
        :length => 1,
        :position => (138..138),
        :required => false,
        :required_once => false
      },
      :tf21_filler => {
        :description => "Spaces",
        :format => "X(182)",
        :length => 182,
        :position => (139..320),
        :required => false,
        :required_once => false
      },
      :tf30_rec_type => {
        :description => "Record Type 30: Ship-To record (multiple-optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf30_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf30_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf30_fname => {
        :description => "First name",
        :format => "X(16)",
        :length => 16,
        :position => (11..26),
        :required => false,
        :required_once => true
      },
      :tf30_mi => {
        :description => "Middle initial",
        :format => "X(1)",
        :length => 1,
        :position => (27..27),
        :required => false,
        :required_once => false
      },
      :tf30_lname => {
        :description => "Last name",
        :format => "X(16)",
        :length => 16,
        :position => (28..43),
        :required => false,
        :required_once => true
      },
      :tf30_title_code => {
        :description => "Title code",
        :format => "X(2)",
        :length => 2,
        :position => (44..45),
        :required => false,
        :required_once => false
      },
      :tf30_co_name => {
        :description => "Company name",
        :format => "X(30)",
        :length => 30,
        :position => (46..75),
        :required => false,
        :required_once => true
      },
      :tf30_ref1 => {
        :description => "Address reference line 1",
        :format => "X(30)",
        :length => 30,
        :position => (76..105),
        :required => false,
        :required_once => false
      },
      :tf30_ref2 => {
        :description => "Address reference line 2",
        :format => "X(30)",
        :length => 30,
        :position => (106..135),
        :required => false,
        :required_once => false
      },
      :tf30_street => {
        :description => "Street address or PO Box number",
        :format => "X(30)",
        :length => 30,
        :position => (136..165),
        :required => true,
        :required_once => false
      },
      :tf30_city => {
        :description => "City",
        :format => "X(30)",
        :length => 30,
        :position => (166..195),
        :required => true,
        :required_once => false
      },
      :tf30_state => {
        :description => "State (enter FN if foreign)",
        :format => "X(2)",
        :length => 2,
        :position => (196..197),
        :required => true,
        :required_once => false
      },
      :tf30_zip_code => {
        :description => "Zip Code",
        :format => "X(14)",
        :length => 14,
        :position => (198..211),
        :required => true,
        :required_once => false
      },
      :tf30_country_code => {
        :description => "Country code (required only if state = FN)",
        :format => "X(4)",
        :length => 4,
        :position => (212..215),
        :required => false,
        :required_once => false
      },
      :tf30_phone_no => {
        :description => "Phone number",
        :format => "X(14)",
        :length => 14,
        :position => (216..229),
        :required => false,
        :required_once => false
      },
      :tf30_old_cust_no => {
        :description => "Cross reference to customer",
        :format => "X(24)",
        :length => 24,
        :position => (230..253),
        :required => false,
        :required_once => false
      },
      :tf30_cust_no => {
        :description => "Ecometry customer number",
        :format => "9(9)",
        :length => 9,
        :position => (254..262),
        :required => false,
        :required_once => false
      },
      :tf30_chk_dig => {
        :description => "Customer number check digit",
        :format => "X(1)",
        :length => 1,
        :position => (263..263),
        :required => false,
        :required_once => false
      },
      :tf30_cust_edp => {
        :description => "Customer EDP number (Ecometry Internal)",
        :format => "9(9)",
        :length => 9,
        :position => (264..272),
        :required => false,
        :required_once => false
      },
      :tf30_convenience_flag => {
        :description => "Convenience ship-to (Y/N/A) (default is N)",
        :format => "X(1)",
        :length => 1,
        :position => (273..273),
        :required => false,
        :required_once => false
      },
      :tf30_future_code => {
        :description => "User-defined future-order date code. For example, date-code X could be 12/20/05.",
        :format => "X(1)",
        :length => 1,
        :position => (274..274),
        :required => false,
        :required_once => false
      },
      :tf30_future_fil => {
        :description => "If TF30-FUTURE-CODE is a date code, this field is blank. If a date is used. TF30-FUTURE-CODE and this field are used together to contain the 8-character date (mm/dd/yy).",
        :format => "X(7)",
        :length => 7,
        :position => (275..281),
        :required => false,
        :required_once => false
      },
      :tf30_ship_meth => {
        :description => "Ship method for this ship-to. Refer to the Determining the Ship Method for Batch Orders topic in Batch Order Production for a discussion of how this field is used.",
        :format => "X(2)",
        :length => 2,
        :position => (282..283),
        :required => false,
        :required_once => false
      },
      :tf30_repl_addr => {
        :description => "Address replacement flag",
        :format => "X(1)",
        :length => 1,
        :position => (284..284),
        :required => false,
        :required_once => false
      },
      :tf30_filler2 => {
        :description => "Spaces",
        :format => "X(36)",
        :length => 36,
        :position => (285..320),
        :required => false,
        :required_once => false
      },
      :tf31_rec_type => {
        :description => "Record Type 31: Ship-To comments (optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf31_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf31_order_no => {
        :description => "Order number",
        :format => "9(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf31_comment1 => {
        :description => "First 60 character customer comment",
        :format => "X(60)",
        :length => 60,
        :position => (11..70),
        :required => true,
        :required_once => false
      },
      :tf31_comment2 => {
        :description => "Second 60 character customer comment",
        :format => "X(60)",
        :length => 60,
        :position => (71..130),
        :required => true,
        :required_once => false
      },
      :tf31_prt_on_pkslp1 => {
        :description => "Print first comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (131..131),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_label1 => {
        :description => "Print first comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (132..132),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_greet1 => {
        :description => "Print first comment on warehouse label",
        :format => "X(1)",
        :length => 1,
        :position => (133..133),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_pkslp2 => {
        :description => "Print second comment on packing slip",
        :format => "X(1)",
        :length => 1,
        :position => (134..134),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_label2 => {
        :description => "Print second comment on shipping label",
        :format => "X(1)",
        :length => 1,
        :position => (135..135),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_greet2 => {
        :description => "Print second comment on warehouse label",
        :format => "X(1)",
        :length => 1,
        :position => (136..136),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_invoice1 => {
        :description => "Print first comment on invoice",
        :format => "X(1)",
        :length => 1,
        :position => (137..137),
        :required => false,
        :required_once => false
      },
      :tf31_prt_on_invoice2 => {
        :description => "Print second comment on invoice",
        :format => "X(1)",
        :length => 1,
        :position => (138..138),
        :required => false,
        :required_once => false
      },
      :tf31_filler => {
        :description => "Spaces",
        :format => "X(182)",
        :length => 182,
        :position => (139..320),
        :required => false,
        :required_once => false
      },
      :tf33_rec_type => {
        :description => "Record Type 33: Ship-To Email address (one per tf30 record in the order)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => false,
        :required_once => false
      },
      :tf33_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf33_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => false,
        :required_once => false
      },
      :tf33_email_addr => {
        :description => "E-mail address for a ship-to",
        :format => "X(50)",
        :length => 50,
        :position => (11..60),
        :required => false,
        :required_once => false
      },
      :tf33_filler => {
        :description => "Spaces",
        :format => "X(260)",
        :length => 260,
        :position => (61..320),
        :required => false,
        :required_once => false
      },
      :tf40_rec_type => {
        :description => "Record Type 40: Line-item record (multiple)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf40_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf40_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf40_internals => {
        :description => "Spaces",
        :format => "X(2)",
        :length => 2,
        :position => (11..12),
        :required => false,
        :required_once => false
      },
      :tf40_quantity => {
        :description => "Line item quantity Blank or 0 = the line item is canceled",
        :format => "9(4)",
        :length => 4,
        :position => (13..16),
        :required => true,
        :required_once => false
      },
      :tf40_edp_no => {
        :description => "Ecometry internal product number Blank = use product number to find product.",
        :format => "9(9)",
        :length => 9,
        :position => (17..25),
        :required => false,
        :required_once => false
      },
      :tf40_tax_exem_no => {
        :description => "Tax ID number becomes an account comment",
        :format => "X(60)",
        :length => 60,
        :position => (26..85),
        :required => false,
        :required_once => false
      },
      :tf40_item_no => {
        :description => "Product number in Ecometry",
        :format => "X(20)",
        :length => 20,
        :position => (86..105),
        :required => true,
        :required_once => false
      },
      :tf40_tax_amt => {
        :description => "Total tax amount for order (optional) (only used in the first Record Type 42 for each order) Blank = Ecometry calculates the tax amount at Order Entry",
        :format => "9(6)v99",
        :length => 7,
        :position => (106..112),
        :required => false,
        :required_once => false
      },
      :tf40_tax_rate => {
        :description => "Tax rate assigned to order (only used in the first Record type 40 for each order) Blank or 0 = Ecometry calculates the tax",
        :format => "9(2)v9(4)",
        :length => 6,
        :position => (113..118),
        :required => false,
        :required_once => false
      },
      :tf40_tax_exem => {
        :description => "Order is tax exempt (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (119..119),
        :required => false,
        :required_once => false
      },
      :tf40_ship_meth => {
        :description => "Ship method (optional). Valid ship method 01-99.",
        :format => "9(2)",
        :length => 2,
        :position => (120..121),
        :required => false,
        :required_once => false
      },
      :tf40_p_h_amt => {
        :description => "Total postage for order (optional) (only used in the first record type 40 for each order) Blank = Postage the same as Order Entry. Amount must be right justified and zero filled",
        :format => "9(5)v9(2)",
        :length => 7,
        :position => (122..128),
        :required => false,
        :required_once => false
      },
      :tf40_price => {
        :description => "Spaces = Ecometry pricing routine. Right justified and zero filled.",
        :format => "9(7)v9(2)",
        :length => 9,
        :position => (129..137),
        :required => false,
        :required_once => false
      },
      :tf40_ship_date => {
        :description => "Ship date of order (mm/dd/yy) (only used in the first Record type 40 for each order) Blank = use ship date from record type 15",
        :format => "X(8)",
        :length => 8,
        :position => (138..145),
        :required => false,
        :required_once => false
      },
      :tf40_pos_ret => {
        :description => "Point of sale return (Y = POS return)",
        :format => "X(1)",
        :length => 1,
        :position => (146..146),
        :required => false,
        :required_once => false
      },
      :tf40_post_x => {
        :description => "Additional postage (only used in the first record type 40 for each order)",
        :format => "9(5)v99",
        :length => 6,
        :position => (147..153),
        :required => false,
        :required_once => false
      },
      :tf40_assoc_line_no => {
        :description => "Associated Product Line Number",
        :format => "9(3)",
        :length => 3,
        :position => (154..156),
        :required => false,
        :required_once => false
      },
      :tf40_gift_cert_no => {
        :description => "Gift certificate number",
        :format => "X(8)",
        :length => 8,
        :position => (157..164),
        :required => false,
        :required_once => false
      },
      :tf40_gc_virtual_auth => {
        :description => "Virtual gift card authorization",
        :format => "X(6)",
        :length => 6,
        :position => (165..170),
        :required => false,
        :required_once => false
      },
      :tf40_gc_virtual_no => {
        :description => "Virtual gift card number",
        :format => "X(19)",
        :length => 19,
        :position => (171..189),
        :required => false,
        :required_once => false
      },
      :tf40_gc_virtual_pin => {
        :description => "Virtual gift card pin",
        :format => "X(8)",
        :length => 8,
        :position => (190..197),
        :required => false,
        :required_once => false
      },
      :tf40_filler1 => {
        :description => "Spaces",
        :format => "X(113)",
        :length => 113,
        :position => (198..310),
        :required => false,
        :required_once => false
      },
      :tf40_overide_price => {
        :description => "Price override flag (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (311..311),
        :required => false,
        :required_once => false
      },
      :tf40_club_sales_type => {
        :description => "Code used to describe the application of an individual sale in a club environment. Set in Code Descriptions, type TS.",
        :format => "X(1)",
        :length => 1,
        :position => (312..312),
        :required => false,
        :required_once => false
      },
      :tf40_return_flag => {
        :description => "Order history only",
        :format => "X(1)",
        :length => 1,
        :position => (313..313),
        :required => false,
        :required_once => false
      },
      :tf40_povrd_reason => {
        :description => "Price override reason",
        :format => "X(2)",
        :length => 2,
        :position => (314..315),
        :required => false,
        :required_once => false
      },
      :tf40_filler2 => {
        :description => "Spaces",
        :format => "X(5)",
        :length => 5,
        :position => (316..320),
        :required => false,
        :required_once => false
      },
      :tf41_rec_type => {
        :description => "Record Type 41: Custom product comments (optional), up to ten type 41 records per product",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf41_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf41_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf41_comment1 => {
        :description => "First 60 character customize comment",
        :format => "X(60)",
        :length => 60,
        :position => (11..70),
        :required => true,
        :required_once => false
      },
      :tf41_comment2 => {
        :description => "Second 60 character customize comment",
        :format => "X(60)",
        :length => 60,
        :position => (71..130),
        :required => true,
        :required_once => false
      },
      :tf41_bank_acct1 => {
        :description => "Bank account 1 (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (131..131),
        :required => false,
        :required_once => false
      },
      :tf41_bank_acct2 => {
        :description => "Bank account 2 (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (132..132),
        :required => false,
        :required_once => false
      },
      :tf41_edp_nox => {
        :description => "Kit component product EDP number.",
        :format => "X(9)",
        :length => 9,
        :position => (133..141),
        :required => false,
        :required_once => false
      },
      :tf41_citb_token_no => {
        :description => "CardintheBox Token",
        :format => "X(9)",
        :length => 9,
        :position => (142..150),
        :required => false,
        :required_once => false
      },
      :tf41_citb_sku => {
        :description => "CardintheBox SKU",
        :format => "X(9)",
        :length => 9,
        :position => (151..159),
        :required => false,
        :required_once => false
      },
      :tf41_filler => {
        :description => "Spaces",
        :format => "X(140)",
        :length => 140,
        :position => (160..299),
        :required => false,
        :required_once => false
      },
      :tf41_flag => {
        :description => "Internal use only",
        :format => "X(1)",
        :length => 1,
        :position => (300..300),
        :required => false,
        :required_once => false
      },
      :tf41_item_no => {
        :description => "Internal use only",
        :format => "X(20)",
        :length => 20,
        :position => (301..320),
        :required => false,
        :required_once => false
      },
      :tf42_rec_type => {
        :description => "Record Type 42: Variable component (multiple-optional)",
        :format => "X(2)",
        :length => 2,
        :position => (1..2),
        :required => true,
        :required_once => false
      },
      :tf42_order_no_pre => {
        :description => "Order number prefix",
        :format => "X(1)",
        :length => 1,
        :position => (3..3),
        :required => true,
        :required_once => false
      },
      :tf42_order_no => {
        :description => "Order number",
        :format => "X(7)",
        :length => 7,
        :position => (4..10),
        :required => true,
        :required_once => false
      },
      :tf42_quantity => {
        :description => "Line item quantity (blank or 0 = the line item is canceled)",
        :format => "9(6)",
        :length => 6,
        :position => (11..16),
        :required => true,
        :required_once => false
      },
      :tf42_edp_no => {
        :description => "Internal Ecometry number (optional) Spaces = use product number to find product",
        :format => "9(9)",
        :length => 9,
        :position => (17..25),
        :required => false,
        :required_once => false
      },
      :tf42_tax_exem_no => {
        :description => "Tax identification number (optional) becomes an account comment",
        :format => "X(60)",
        :length => 60,
        :position => (26..85),
        :required => false,
        :required_once => false
      },
      :tf42_item_no => {
        :description => "Product number in Ecometry",
        :format => "X(20)",
        :length => 20,
        :position => (86..105),
        :required => true,
        :required_once => false
      },
      :tf42_tax_amt => {
        :description => "Total tax amount for order (optional) (only used in the first Record Type 40 for each order) Blank = Ecometry calculates the tax amount at Order Entry",
        :format => "9(5)v9(2)",
        :length => 7,
        :position => (106..112),
        :required => false,
        :required_once => false
      },
      :tf42_tax_rate => {
        :description => "Tax rate assigned to order. Blank or 0 = Ecometry calculates the tax",
        :format => "9(2)v9(4)",
        :length => 6,
        :position => (113..118),
        :required => false,
        :required_once => false
      },
      :tf42_tax_exem => {
        :description => "Order is tax exempt (Y/N)",
        :format => "X(1)",
        :length => 1,
        :position => (119..119),
        :required => false,
        :required_once => false
      },
      :tf42_ship_meth => {
        :description => "Ship method (optional). Valid ship method 01-99.",
        :format => "9(2)",
        :length => 2,
        :position => (120..121),
        :required => false,
        :required_once => false
      },
      :tf42_post_amt => {
        :description => "Total postage for order (optional). If blank, Batch Order changes postage the same as Order Entry. If 0, Batch Order does not charge postage for the order.",
        :format => "9(5)v9(2)",
        :length => 7,
        :position => (122..128),
        :required => false,
        :required_once => false
      },
      :tf42_price => {
        :description => "Spaces = Ecometry pricing routine 0 = No Charge for this product",
        :format => "9(7)v9(2)",
        :length => 9,
        :position => (129..137),
        :required => false,
        :required_once => false
      },
      :tf42_filler => {
        :description => "Spaces",
        :format => "X(183)",
        :length => 183,
        :position => (138..320),
        :required => false,
        :required_once => false
      },
    }
  end
end
