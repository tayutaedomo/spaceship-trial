#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#apps

bundle_id = ARGV[0]
p "Bundle ID: #{bundle_id}"

#all_apps = Spaceship.app.all

app = Spaceship.app.find(bundle_id)
p app if app

