require "spec_helper"
require 'active_resource'
require 'factory_girl'

class DummyModel < ActiveResource::Base
  self.site = "/dummy"

  extend FurltilityActiveResource
	furltility :title
end

FactoryGirl.define do
  factory :dummy_model do
    skip_create

    id { 1 }
    title { 'fake' }
  end
end


describe DummyModel do
  let(:dummy) { FactoryGirl.create(:dummy_model) }

  # Sometimes it adds to ID column in Action Controller.
  describe 'Should never be able to add parts to ID' do
    it "Doesn't add multiple slugs" do
      dummy_copy = DummyModel.new(JSON.parse(dummy.to_json))
      dummy_copy.id = dummy_copy.to_param

      expect(dummy_copy.to_param).to eq('1-fake')
    end
  end
end
