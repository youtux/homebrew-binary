class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1404799"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86_64/p4"
    sha256 "0f91b86f11e98ac8078500da392d4a55a65d74899bd507133c40de3cb220feb4"
  else
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86/p4"
    sha256 "4f5c9ad5f46497f16afc06a7c7e755079d754dfd64c3eaf229e3e51643db6e7d"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
