# Application Settings for Ruby on Rails built on Active Record

[![Gem Version](https://badge.fury.io/rb/ar-settings.svg)](https://badge.fury.io/rb/ar-settings) [![Build Status](https://travis-ci.org/mladenilic/ar-settings.svg?branch=master)](https://travis-ci.org/mladenilic/ar-settings) [![Maintainability](https://api.codeclimate.com/v1/badges/c32df8f8675774adf2d1/maintainability)](https://codeclimate.com/github/mladenilic/ar-settings/maintainability)

Simplified, permanent key-value store for global application settings.

## Getting Started

Add following to `Gemfile`:
```rb
gem 'ar-settings', require: 'settings'
```
then `bundle install`

Run generator to add migration:
```
$ rails generate install_settings
```

## Usage
Gem implements minimal amount of public methods needed to manage settings:
```rb
Settings.set(:key, 'value')
Settings.get(:key)

Settings.has(:key)
Settings.unset(:key)
```

## To do
1. Allow mass assignments
2. Utilize `Rails.cache` to reduce overhead of querying db

## Licence
Licensed under the MIT license.
