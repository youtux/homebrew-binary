class Jsl < Formula
  desc "JavaScript linter"
  homepage "http://www.javascriptlint.com/"
  url "http://www.javascriptlint.com/download/jsl-0.3.0-mac.tar.gz"
  sha256 "e7304d03fdb28165370e2859722c4821366e784dd86329bd246231cab610268e"

  bottle :unneeded

  def install
    bin.install "jsl"
  end
end
