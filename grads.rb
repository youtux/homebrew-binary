class Grads < Formula
  desc "desktop tool to manipule earth science data"
  homepage "http://www.iges.org/grads/grads.html"
  url "ftp://cola.gmu.edu/grads/2.0/grads-2.0.2-bin-darwin9.8-intel.tar.gz"
  sha256 "da31b5ded94b426acff5b3f27202c74918be71610de424aa0b7877a264eadf59"

  # required supplementary files
  resource "data2" do
    url "ftp://cola.gmu.edu/grads/data2.tar.gz"
    sha256 "55419fe15478d8213031bb1bfa7adec96984379373ec751cbe37d4bb22f6ce18"
  end

  bottle :unneeded

  def install
    rm "bin/INSTALL"
    prefix.install "bin/COPYRIGHT", "bin"
    (lib/"grads").install resource("data2")
  end

  def caveats; <<-EOS.undent
    In order to use the GrADS tools, you may need to set some environmental
    variables. See the documentation at:
      http://www.iges.org/grads/gadoc/gradcomdgrads.html
    EOS
  end
end
