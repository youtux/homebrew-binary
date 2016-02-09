class Prince < Formula
  desc "Convert HTML to PDF with CSS."
  homepage "http://www.princexml.com"
  url "http://www.princexml.com/download/prince-10r7-macosx.tar.gz"
  sha256 "84daae4bb3365887429b762a18cb213b30ef26c4dea14fbe809a277f9d04f118"

  def install
    system "echo #{prefix} | ./install.sh"
  end

  test do
    assert_match /\APrince 10 rev 7/, shell_output("#{bin}/prince --version")
  end
end
