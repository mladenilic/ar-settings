require 'spec_helper'

describe 'unset method', model: true do
  before(:each) {
    Settings.set(:key, 'value')
  }

  it 'does not raise error' do
    expect { Settings.unset(:key) }.not_to raise_error
    expect { Settings.unset(:non_existing) }.not_to raise_error
  end

  it 'correctly removes setting' do
    expect(Settings.get(:key)).to eq 'value'

    Settings.unset(:key)

    expect(Settings.get(:key)).to eq nil
  end
end
