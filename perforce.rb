class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1326881"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "0276791248bf4f6fcd33f3eafb430b9719b22b0e446769523e57dc831c209098"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "9967093883905d712f2a441d7eb815f9c1b193ac51b9cfc1882c0bf179dec2ef"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
