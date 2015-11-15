class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1264740"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "e7a1e03b6366ca436f71b3d0a6d47a0f8c707fed8794daba97857d36296e693e"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "a55b503fa2aa9db8c91a0693d03a9f4428e9011c296c0ba45eb7d80bde07e59a"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
