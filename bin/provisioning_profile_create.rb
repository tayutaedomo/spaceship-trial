#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login(ENV['SPACESHIP_MAIL'], ENV['SPACESHIP_PASS'])

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#create-a-provisioning-profile

bundle_id = ARGV[0]
p "Bundle ID: #{bundle_id}"

filtered_profiles = Spaceship.provisioning_profile.app_store.find_by_bundle_id(bundle_id)
if filtered_profiles.first
  p "Provisioning File (#{bundle_id}) has already registered."
  exit
end

certificate_id = ARGV[1]
p "Certificate ID: #{certificate_id}"

certificate = Spaceship.certificate.find(certificate_id)
unless certificate
  p "Certificate (#{certificate_id}) is not found."
end

profile_name = ARGV[2]
profile = Spaceship.provisioning_profile.ad_hoc.create!(bundle_id: bundle_id,
                                                        certificate: certificate,
                                                        name: profile_name)
p profile if profile

