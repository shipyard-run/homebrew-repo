# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.33"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.33/shipyard_0.3.33_darwin_x86_64.zip"
    sha256 "092f2e3dba06d619c0c1cf32a84b0915f2a8011de3c94d3d302a1b608e0359d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.33/shipyard_0.3.33_darwin_arm64.zip"
    sha256 "976f497db8045b9a9633f4dd00876dee13b67070e17dbcc7077c788d1c663fde"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.33/shipyard_0.3.33_linux_x86_64.tar.gz"
    sha256 "642bc78a228b2ad78684a190d40b63bae06bd5d8e59951332b5543beff148daa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.33/shipyard_0.3.33_linux_armv7.tar.gz"
    sha256 "b87b4bc8b78cb5df4c6688d23bbaddd08a946531e5ff8ef1df4eb60f39714c92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.33/shipyard_0.3.33_linux_arm64.tar.gz"
    sha256 "d65b620e99b8ec9d04046795892cdca3e92f41a1107548ef28ac4bba1219d823"
  end

  def install
    bin.install "shipyard"
  end
end
