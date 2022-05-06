# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.53"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.53/shipyard_0.3.53_darwin_x86_64.zip"
    sha256 "01e77af36f1c460e62ae77a430b5b9a99bdd916b873e2b6525d9e0fbf059f8ec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.53/shipyard_0.3.53_darwin_arm64.zip"
    sha256 "3a76ff98b3fac7076757feb382c807c22da161d8a148a147c712c57bd907c6ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.53/shipyard_0.3.53_linux_x86_64.tar.gz"
    sha256 "2e17e5d7480e26dcf849238623677f0d2d0f56cb5bbc9e518e26e9ed612f6cdb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.53/shipyard_0.3.53_linux_armv7.tar.gz"
    sha256 "5e2b0ee981a7199594aae47b2545a50e0e1b2d5f1de0641581b4bb3dc4e56cca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.53/shipyard_0.3.53_linux_arm64.tar.gz"
    sha256 "f133650139c7f1b2888c738f2ccbb1a20f37bf626f0828786bb2d8bd7f537f11"
  end

  def install
    bin.install "shipyard"
  end
end
