# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.25"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.25/shipyard_0.3.25_Darwin_x86_64.zip"
    sha256 "a90e63a807268e6271dcb582880fdd66bb9e20acf648839565e9602af6446fdc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.25/shipyard_0.3.25_Darwin_arm64.zip"
    sha256 "82dafd4fd297a5ccb90a2c6082116c674c28ec21752284313cf4f71858c07598"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.25/shipyard_0.3.25_Linux_x86_64.tar.gz"
    sha256 "c5c6a91477788e719600dbcc5767e263b8ca78a7e152168b9252be6884f5adf9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.25/shipyard_0.3.25_Linux_armv7.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.25/shipyard_0.3.25_Linux_arm64.tar.gz"
    sha256 "3c4685cc33ec3a51c3763ec5585d83a7a89288fa9cd7c0a653842fd378892202"
  end

  def install
    bin.install "shipyard"
  end
end
