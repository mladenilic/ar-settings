require 'spec_helper'

describe Settings, 'model', model: true do
  it 'responds to get method' do
    expect(Settings).to respond_to :get
  end

  it 'responds to set method' do
    expect(Settings).to respond_to :set
  end

  it 'responds to has method' do
    expect(Settings).to respond_to :has
  end

  it 'responds to unset method' do
    expect(Settings).to respond_to :unset
  end

  it 'responds to update' do
    expect(Settings).to respond_to :update
  end
end
