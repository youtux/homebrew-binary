class Ngrok2 < Formula
  desc "Secure tunnels to localhost"
  homepage "https://ngrok.com/"
  version "2.0.25"

  if MacOS.prefer_64_bit?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-amd64.zip"
    sha256 "62fb342cd1d177415a1b4dba1b40f542e25caa5ea119604981e474a0003c6aa1"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-386.zip"
    sha256 "c7bd3ce01b8a9c9c8c4ee9c14683e96c59bd5d7d6d6f6d1a516c67ca8e7cfe3a"
  end

  bottle :unneeded

  def install
    bin.install "ngrok"
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok -version")
  end
end
