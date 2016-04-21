class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1374211"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86_64/p4"
    sha256 "69cc4edbb3f29ff56244f4f301c0d1903e09cfe89557c675e819808d4f85ffd1"
  else
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86/p4"
    sha256 "b2ad97092fbc75343f8b1bf0fe7eafa848841a67893634cf4421e356b9ad4dae"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
