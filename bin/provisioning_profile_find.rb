#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#receiving-profiles

bundle_id = ARGV[0]
p "Bundle ID: #{bundle_id}"

#profiles = Spaceship.provisioning_profile.all
#p profiles

filtered_profiles = Spaceship.provisioning_profile.app_store.find_by_bundle_id(bundle_id)
p filtered_profiles

