#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#certificates

id = ARGV[0]
p "ID: #{id}"

certificate = Spaceship.certificate.find(id)
p certificate if certificate

