require_relative 'spec_helper'
require_relative '../lib/nibba'

b = "🅱️"

describe 'nibba' do
  it "calls the correct method when replacing same consonant letters with #{b}" do
    "ayy".itse🅱️f
      .must_equal "ayy"

    "whom'st'd".🅱️on🅱️at("'ve")
      .must_equal "whom'st'd've"

    "ebin".su🅱️🅱️
      .must_equal "ebio"
  end

  it "fails when replacing #{b} with a non-consonant" do
    lambda do
      "whomstsoever".r🅱️v🅱️rs🅱️
    end.must_raise
  end

  it "fails when replacing different letters with #{b}" do
    lambda do
      "🅱️o🅱️a 🅱️ola".🅱️repen🅱️(
        "whomstsoever wants a ")
    end.must_raise
  end
end
