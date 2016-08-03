#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#receiving-profiles

bundle_id = ARGV[0]
p "Bundle ID: #{bundle_id}"

filtered_profiles = Spaceship.provisioning_profile.find_by_bundle_id(bundle_id)
#p filtered_profiles.first

if filtered_profiles.first
  File.write('download.mobileprovision', filtered_profiles.first.download)
end

