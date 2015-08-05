class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.1.1204891"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86_64/p4"
    sha256 "5535ed8459f50ce6e79b36e039c5892e6d1794d9bb7876ac49f83904b5ea2404"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86/p4"
    sha256 "0b613ffd3a7bb898ac02cb7472e48e5f6fca6def533aa1bd75634ab56b22d061"
  end

  def install
    bin.install "p4"
  end
end
