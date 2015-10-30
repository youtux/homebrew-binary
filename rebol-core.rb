class RebolCore < Formula
  desc "Cross-platform data exchange programming language"
  homepage "http://www.rebol.com/"
  url "http://www.rebol.com/downloads/v278/rebol-core-278-2-5.tar.gz"
  sha256 "edfa75f1be9d0d4f92a217185a3810e05b0dee41f8d24096f7568515b7b4aa06"

  conflicts_with "rebol-view", :because => "Only one of REBOL Core or View is currently supported"

  bottle :unneeded

  depends_on :macos => :snow_leopard
  depends_on :arch => :intel

  def install
    bin.install "rebol-core/rebol"
  end

  def caveats; <<-EOS.undent
    REBOL license information is available at http://www.rebol.com/license.html
    or by typing "license" at the REBOL console.
    EOS
  end

  test do
    system "#{bin}/rebol", "--quiet", "--do", "print \"Hello, world!\" quit"
  end
end
