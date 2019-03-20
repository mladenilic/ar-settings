require 'spec_helper'

describe 'set method', model: true do
  it 'sets correct value' do
    expect(Settings.has(:key)).to eq false

    Settings.set(:key, 'value')

    expect(Settings.get(:key)).to eq 'value'
  end

  it 'can update values' do
    Settings.set(:key, 'value')
    Settings.set(:key, 'value2')

    expect(Settings.get(:key)).to eq 'value2'
  end

  it 'can set multiple values' do
    Settings.set(:key, 'value')
    Settings.set(:key2, 'value2')

    expect(Settings.all.count).to eq 2
  end
end
