require 'spec_helper'

describe 'set method', model: true do
  it 'does not raise error' do
    expect { Settings.set(:key, 'value') }.not_to raise_error
  end

  it 'sets correct value' do
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
