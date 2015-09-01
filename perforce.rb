class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.1.1227227"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86_64/p4"
    sha256 "a6d39a35f2be437e2fcbc28a5d0a6b520a584bc122a262c8a5f14cf1dd1811c9"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86/p4"
    sha256 "66db5105d11ff34adc8cae73e9b04e5655001b710dbc373f7c6475dba4831acc"
  end

  def install
    bin.install "p4"
  end
end
