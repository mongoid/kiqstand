require "spec_helper"

describe Kiqstand::Middleware do

  class Band
    include Mongoid::Document
  end

  describe "#call" do

    let(:middleware) do
      described_class.new
    end

    context "when the identity map has items" do

      before do
        Mongoid::IdentityMap.set(Band.new)
        middleware.call {}
      end

      it "clears the identity map" do
        Mongoid::IdentityMap.should be_empty
      end
    end
  end
end
