#! /usr/bin/env ruby

require 'spaceship'

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#login

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

p Spaceship.select_team

