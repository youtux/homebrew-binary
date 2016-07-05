class PerforceProxy < Formula
  desc "Proxy for Perforce applications"
  homepage "http://www.perforce.com/"
  version "2016.1.1404799"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r16.1/bin.darwin90x86_64/p4p"
    sha256 "15a9de967d6d59b83c3a6e5b252571be3ff0d8348bc4472359f47f4447d78cb8"
  else
    url "http://filehost.perforce.com/perforce/r16.1/bin.darwin90x86/p4p"
    sha256 "731171672ed4cf1a11c8fefd66be4d263d255023b431e061ee6e79629c1a6fc5"
  end

  bottle :unneeded

  def install
    bin.install "p4p"
    (var+"p4p").mkpath
  end

  plist_options :startup => true

  def caveats; <<-EOS.undent
    To use the Perforce proxy to access your Perforce server, set your P4PORT
    environment variable to "localhost:1666".

    Before starting the proxy server, you probably need to edit the plist to use
    the correct host and port for your Perforce server (replacing the default
    perforce:1666).
    EOS
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/p4p</string>
        <string>-p</string>
        <string>1666</string>
        <string>-r</string>
        <string>#{var}/p4p</string>
        <string>-t</string>
        <string>perforce:1666</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{var}/p4p</string>
    </dict>
    </plist>
    EOS
  end

  test do
    os_tag = (MacOS.prefer_64_bit? ? "P4P/DARWIN90X86_64" : "P4P/DARWIN90X86")
    (version_year, version_minor, version_build) = version.to_s.split(".")
    assert_match(
      %r{#{os_tag}/#{version_year}\.#{version_minor}/#{version_build} },
      shell_output("#{bin}/p4p -V"))
  end
end
