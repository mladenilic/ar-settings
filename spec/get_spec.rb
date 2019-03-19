require 'spec_helper'

describe 'get method', model: true do
  before(:each) {
    Settings.set(:key, 'value')
    Settings.set(:key2, 'value2')
  }

  it 'does not raise error' do
    expect { Settings.get(:key) }.not_to raise_error
    expect { Settings.get(:non_existing) }.not_to raise_error
  end

  it 'gets correct value' do
    expect(Settings.get(:key)).to eq 'value'
    expect(Settings.get(:key2)).to eq 'value2'
  end

  it 'returns nil for non-existing key' do
    expect(Settings.get(:non_existing)).to eq nil
  end
end
