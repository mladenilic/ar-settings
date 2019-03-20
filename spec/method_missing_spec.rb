require 'spec_helper'

describe 'method missing implementation', model: true do
  it 'sets correct values' do
    Settings.key = 'value'
    Settings.key2 = 'value2'

    expect(Settings.get(:key)).to eq 'value'
    expect(Settings.get(:key2)).to eq 'value2'
  end

  it 'gets correct value' do
    Settings.set :key, 'value'
    Settings.set :key2, 'value2'

    expect(Settings.key).to eq 'value'
    expect(Settings.key2).to eq 'value2'
  end
end
