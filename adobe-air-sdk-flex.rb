# Find downloads at: https://helpx.adobe.com/air/kb/archived-air-sdk-version.html
class AdobeAirSdkFlex < Formula
  desc "Adobe AIR SDK & compiler"
  homepage "https://www.adobe.com/devnet/air/air-sdk-download.html"
  url "http://airdownload.adobe.com/air/mac/download/22.0/AdobeAIRSDK.tbz2"
  version "22.0.0.153"
  sha256 "d39f1c552b9becf278efdc60e560f931c3fb59926b7f36280de86c5db32a3062"

  conflicts_with "adobe-air-sdk"

  bottle :unneeded

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
  end

  def caveats; <<-EOS.undent
    To set AIR_HOME:
      export AIR_HOME=#{libexec}
    EOS
  end

  test do
    assert_equal "#{version}\n", shell_output("#{bin}/adt -version")
  end
end
