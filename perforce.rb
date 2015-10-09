class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.1.1240625"

  if MacOS.prefer_64_bit?
    url "http://www.perforce.com/downloads/perforce/r15.1/bin.darwin90x86_64/p4"
    sha256 "4a1c2258717549e31648648a810708f25f9f48c3d8300279ce649d9f78079494"
  else
    url "http://www.perforce.com/downloads/perforce/r15.1/bin.darwin90x86/p4"
    sha256 "1ed8c05a842b34cc97d822219bc8a8ae5035e0a1b02f7588697d3f1f9271fe04"
  end

  def install
    bin.install "p4"
  end
end
