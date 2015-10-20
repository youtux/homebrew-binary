class Chronograf < Formula
  desc "The data visualization tool for InfluxDB"
  homepage "https://influxdb.com/chronograf/index.html"
  url "https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf-darwin_amd64-0.2.0.tar.gz"
  sha256 "abb41bb7e3c82a9c1468e1187b1b39f5a2b00eca3c8ac0371aab9e07fa34d2fb"

  bottle :unneeded

  def install
    bin.install "chronograf-darwin_amd64-0.2.0" => "chronograf"
    etc.install "chronograf.toml"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <dict>
          <key>SuccessfulExit</key>
          <false/>
        </dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/chronograf</string>
          <string>-config</string>
          <string>#{HOMEBREW_PREFIX}/etc/chronograf.toml</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/chronograf.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/chronograf.log</string>
      </dict>
    </plist>
    EOS
  end

  def caveats; <<-EOS.undent
    To run Chronograf manually, you can specify the configuration file on the command line:
      chronograf -config=#{etc}/chronograf.toml
    EOS
  end

  test do
    system "#{bin}/chronograf", "--sample-config"
  end
end
