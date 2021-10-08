# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.35"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.35/shipyard_0.3.35_darwin_x86_64.zip"
    sha256 "c6e401edb5ed40bf07bfaf3effd8fc7397c42f13beb1ed12173b00208924d196"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.35/shipyard_0.3.35_darwin_arm64.zip"
    sha256 "0b159e0963f4d2d445fb9974fd40bac60973d8591d53ed7b0e1604c30c2b3423"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.35/shipyard_0.3.35_linux_x86_64.tar.gz"
    sha256 "2535e436c922cafad671a4867414c9f1458c43bef4cb5f436e94ec8300a2cec9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.35/shipyard_0.3.35_linux_armv7.tar.gz"
    sha256 "b2aa91a0c807ec073cf821524d87a4916b3bd4896001c6c17f48939357c011bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.35/shipyard_0.3.35_linux_arm64.tar.gz"
    sha256 "ea12ecfc4003438c67f98825f1c4330ab0bbd70e2c3ed75525a94e8b9c518ebb"
  end

  def install
    bin.install "shipyard"
  end
end
