require 'spec_helper'

describe OpenStackRubySDK::Poppy::Flavor, :vcr do
  let(:flavor){ OpenStackRubySDK::Poppy::Flavor.new }

  it 'gets an index' do
    expect(OpenStackRubySDK::Poppy::Flavor.all).to eq([])
  end

  it 'gets its self' do
    expect(OpenStackRubySDK::Poppy::Flavor.find(flavor.id)).to eq(flavor)
  end

  it 'creates its self' do
    flavor.name = Time.now.usec.to_s
    expect(flavor.save).to eq(true)
  end

  it 'updates its self' do
    flavor.name = Time.now.usec.to_s
    expect(flavor.save).to eq(true)
    flavor.name = Time.now.usec.to_s
    expect(flavor.save).to eq(true)
  end

  it 'deletes its self' do
    expect(flavor.destroy).to eq(true)
  end
end
