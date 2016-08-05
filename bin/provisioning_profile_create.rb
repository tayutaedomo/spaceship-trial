#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login

# Refer: https://github.com/fastlane/fastlane/blob/master/spaceship/docs/DeveloperPortal.md#create-a-provisioning-profile

profile_type = ARGV[0]
p "Provisioning Profile Type: #{profile_type}"

bundle_id = ARGV[1]
p "Bundle ID: #{bundle_id}"

filtered_profiles = Spaceship.provisioning_profile.app_store.find_by_bundle_id(bundle_id)
if filtered_profiles.first
  p "Provisioning File (#{bundle_id}) has already registered."
  exit
end

certificate_id = ARGV[2]
p "Certificate ID: #{certificate_id}"

certificate = Spaceship.certificate.find(certificate_id)
unless certificate
  p "Certificate (#{certificate_id}) is not found."
end

profile_name = ARGV[3]

profile = if profile_type == 'adhoc'
            Spaceship.provisioning_profile.ad_hoc.create!(bundle_id: bundle_id,
                                                          certificate: certificate,
                                                          name: profile_name)
          elsif profile_type == 'appstore'
            Spaceship.provisioning_profile.app_store.create!(bundle_id: bundle_id,
                                                             certificate: certificate,
                                                             name: profile_name)
          elsif profile_type == 'inhouse'
            Spaceship.provisioning_profile.in_house.create!(bundle_id: bundle_id,
                                                            certificate: certificate,
                                                            name: profile_name)
          elsif profile_type == 'development'
            Spaceship.provisioning_profile.development.create!(bundle_id: bundle_id,
                                                               certificate: certificate,
                                                               name: profile_name)
          end
p profile if profile

