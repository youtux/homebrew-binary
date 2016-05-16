class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1387479"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86_64/p4"
    sha256 "d54d132bc61bc1db2617cd803e9f915cf7e0b6e8cf76253fa202589b6102dc01"
  else
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86/p4"
    sha256 "45dc664a8ceba2a0fc57dc88527f5194eb1f0781fc19ad864a53ce959efdc678"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
