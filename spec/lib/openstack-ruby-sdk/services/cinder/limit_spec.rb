require 'spec_helper'

describe OpenStackRubySDK::Cinder::Limit, :vcr do
  let(:limit){ OpenStackRubySDK::Cinder::Limit.new }

  it 'gets an index' do
    expect(OpenStackRubySDK::Cinder::Limit.all).to eq([])
  end

  it 'gets its self' do
    expect(OpenStackRubySDK::Cinder::Limit.find(limit.id)).to eq(limit)
  end

  it 'creates its self' do
    limit.name = Time.now.usec.to_s
    expect(limit.save).to eq(true)
  end

  it 'updates its self' do
    limit.name = Time.now.usec.to_s
    expect(limit.save).to eq(true)
    limit.name = Time.now.usec.to_s
    expect(limit.save).to eq(true)
  end

  it 'deletes its self' do
    expect(limit.destroy).to eq(true)
  end
end
