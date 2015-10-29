class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1252060"

  if MacOS.prefer_64_bit?
    url "http://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "33162ea34949fb1962c7a74d7e1577b5307f99a7eaed57f86e9b34e90d618e6e"
  else
    url "http://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "2b267843ceef70a8db0d4188b7868eac9b725c2cbb2fd18710de90a7770f3718"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
