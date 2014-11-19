source ENV['GEM_SOURCE'] || 'https://rubygems.org'

group :test, :development do
  gem 'rspec-puppet',            :require => false
  gem 'rake',                    :require => false
  gem 'puppetlabs_spec_helper',  :require => false
  gem 'serverspec',              :require => false
  gem 'puppet-lint',             :require => false
  gem 'pry',                     :require => false
  gem 'simplecov',               :require => false
  gem 'beaker',                  :require => false
  gem 'beaker-rspec',            :require => false
  gem 'faraday', '0.8.9',        :require => false
  gem 'vcr',                    :require => false
end

if puppetversion = ENV['PUPPET_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end