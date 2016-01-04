class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2015.2.1319959"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86_64/p4"
    sha256 "d22fb8d4863e4c8e75e462175b53c72dbb7d102a6edd42e2e081a5a4fbede4b5"
  else
    url "https://www.perforce.com/downloads/perforce/r15.2/bin.macosx105x86/p4"
    sha256 "aacd78b32fb621cd2562a07050bb0c66615d90207fe1d25a2db3e692525cf529"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end
