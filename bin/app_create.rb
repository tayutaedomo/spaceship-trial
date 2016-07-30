#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#apps

bundle_id = ARGV[0]
app_name = ARGV[1]

app = Spaceship.app.find(bundle_id)
if app
  p "#{bundle_id} has already registered."
  exit
end

app = Spaceship.app.create!(bundle_id: bundle_id, name: app_name)
p app

