require 'spec_helper'

module Alphabeta
  describe Signup do
    @email = "johndoe@email.com"
    let(:signup) { Alphabeta::Signup.create({ email: @email }) }

    it "is invalid without an email" do
      signup.email = nil
      signup.should_not be_valid
    end

    it "is invalid if email not unique" do
      duplicate = Alphabeta::Signup.new({ email: @email })
      duplicate.should_not be_valid
    end
  end
end
