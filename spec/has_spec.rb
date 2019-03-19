require 'spec_helper'

describe 'has method', model: true do
  before(:each) {
    Settings.set(:key, 'value')
  }

  it 'does not raise error' do
    expect { Settings.has(:key) }.not_to raise_error
    expect { Settings.has(:non_existing) }.not_to raise_error
  end

  it 'checks if value exists' do
    expect(Settings.has(:key)).to eq true
    expect(Settings.has(:non_existing)).to eq false
  end
end
