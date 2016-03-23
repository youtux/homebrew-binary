class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1366233"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "740d1d1e7bb5d32199b296d1a5c8bbe049228a97bedb64d71e65248f9982e875"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "4c08928e78b19091c3b858d4b4cc1feb49a73dd33fd083598bfb079453965274"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
