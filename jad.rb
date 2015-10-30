class Jad < Formula
  desc "Java decompiler"
  homepage "http://www.varaneckas.com/jad/"
  url "http://www.varaneckas.com/jad/jad158g.mac.intel.zip"
  version "1.5.8g"
  sha256 "8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9"

  bottle :unneeded

  def install
    man1.install "jad.1"
    libexec.install "jad"
    bin.install_symlink "#{libexec}/jad"
  end
end
