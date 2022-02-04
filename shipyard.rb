# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.41"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.41/shipyard_0.3.41_darwin_x86_64.zip"
    sha256 "689eff825f36fb66e72c45871323de069eab7abaa3a77bc7db34046244d4e9ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.41/shipyard_0.3.41_darwin_arm64.zip"
    sha256 "f537908eb142aa87975b0b901e6674279c212feec603419c2f5fd7541b81bf43"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.41/shipyard_0.3.41_linux_x86_64.tar.gz"
    sha256 "849e39888b4aa27bf2cdfb5af0ff5aad569361e51eac520f11fd43c0d95bc1fc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.41/shipyard_0.3.41_linux_armv7.tar.gz"
    sha256 "54ec7b44f26232bf77250dce8b7aa33df00f55e54f5bf4ddd78996b445ffaea7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.41/shipyard_0.3.41_linux_arm64.tar.gz"
    sha256 "1c0909c000b4bb0e7e5e1c2a3ab3540903b572fc7fd271db48400900d76838e1"
  end

  def install
    bin.install "shipyard"
  end
end
