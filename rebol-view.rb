class RebolView < Formula
  desc "Rebol distribution with additional graphics support"
  homepage "http://www.rebol.com/"
  url "http://www.rebol.com/downloads/v278/rebol-view-278-2-5.tar.gz"
  sha256 "9aff51eb1d388ec93ce6385eb77a285064a101b5f2f716851170d2e6b9f6e031"

  conflicts_with "rebol-core", :because => "Only one of REBOL Core or View is currently supported"

  bottle :unneeded

  depends_on :macos => :snow_leopard
  depends_on :arch => :intel

  def install
    bin.install "rebol-view/rebol"
  end

  def caveats; <<-EOS.undent
    REBOL license information is available at http://www.rebol.com/license.html
    or by typing "license" at the REBOL console.
    EOS
  end

  test do
    system "#{bin}/rebol", "--quiet", "--noviewtop", "--do", "print \"Hello, world!\" quit"
  end
end
