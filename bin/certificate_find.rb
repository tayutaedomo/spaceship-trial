#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#certificates

id = ARGV[0]
p "Certificate ID: #{id}"

certificate = Spaceship.certificate.find(id)
p certificate if certificate

