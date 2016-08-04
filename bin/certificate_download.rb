#! /usr/bin/env ruby

require 'spaceship'

Spaceship.login

id = ARGV[0]
p "Certificate ID: #{id}"

certificate = Spaceship.certificate.find(id)
#p certificate if certificate

if certificate
  #File.write('download.cer', certificate.download)
  File.write('download.cer', certificate.download_raw)
end

