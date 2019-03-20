require 'spec_helper'

describe 'mass update', model: true do
  before(:each) {
    Settings.update({
      key: 'value',
      key: 'value',
      key2: 'value2'
    })
  }

  it 'gets correct value' do
    expect(Settings.key).to eq 'value'
    expect(Settings.get(:key)).to eq 'value'

    expect(Settings.key2).to eq 'value2'
    expect(Settings.get(:key2)).to eq 'value2'
  end
end
