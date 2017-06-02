class Adb1036 < Formula
  desc ""
  homepage ""
  url "https://dl-ssl.google.com/android/repository/platform-tools_r25-macosx.zip"
  sha256 "33030a8ecbc419fcd80b01d274e7869417524b1f06b005a0f6d9a7f69e95ebec"

  def install
    bin.install "adb" => "adb-1-0-36"
  end

  test do
    system "false"
  end
end
