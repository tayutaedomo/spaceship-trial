#! /usr/bin/env ruby

require 'spaceship'

# Refer: https://github.com/fastlane/fastlane/tree/master/credentials_manager
mail = ARGV[0] || ENV['FASTLANE_USER']
password = ARGV[1] || ENV['SPACESHIP_PASS']

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#login
Spaceship.login(mail, password)

p Spaceship.select_team

