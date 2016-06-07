class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1396108"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86_64/p4"
    sha256 "a3dd6332c6fe06d6febdaa6f4de35e79e5a9c4deead1441c7574393807bdfff4"
  else
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86/p4"
    sha256 "395089e0900915b9c617697446bb600874b6723ce61f496a1281a36896b20980"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
