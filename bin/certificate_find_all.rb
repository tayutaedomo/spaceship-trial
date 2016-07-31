#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#certificates

certificates = Spaceship.certificate.all
p certificates

