class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1311674"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "361b336973f00ca9bab41a50d4f36bc1807db33d93fdda1649afa5f7130c1e36"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "297d47b77e7993b5010e41196c7d2a94fab7212ce8bb445df3fc1d9e9c75e991"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
