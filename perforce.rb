class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1326881"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "0209c2db1f90a5f043015a354d0be2cd1bf1db50855c1a4f3e09d81dcbe46697"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "163cbd80ed67716b7d91b0058e71c2a9fc0755656d003362347fe2dd194c7740"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
