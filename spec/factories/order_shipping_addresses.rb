FactoryBot.define do
  factory :order_shipping_address do
    postal_code { '123-4567' }
    prefecture_id { '26' }
    city { '宇治市' }
    address { 'どこ1-1' }
    building { 'ここ1号' }
    phone_number { '09012345678' }
    token {"tok_abcdefghijk00000000000000000"}

  end
end
