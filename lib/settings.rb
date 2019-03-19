class Settings < ActiveRecord::Base
  def self.set(key, value)
    record = where(key: key).first_or_initialize
    record.value = value

    record.save
  end

  def self.get(key)
    where(key: key).pluck(:value).first
  end

  def self.has(key)
    exists? key: key
  end

  def self.unset(key)
    find_by(key: key)&.destroy
  end
end
