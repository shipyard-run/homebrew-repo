# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.7/shipyard_0.4.7_darwin_x86_64.zip"
    sha256 "093e025f7cb0dfb21a25835ea6651ce67d2e9b78e8d8f5edfe55b2c542da8a9f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.7/shipyard_0.4.7_darwin_arm64.zip"
    sha256 "85ac0c4a2f6d23e8dbcfea97b5cf535eadf9cccdd79e540d13ec4c4a33f2aa44"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.7/shipyard_0.4.7_linux_x86_64.tar.gz"
    sha256 "efa240479a254597f7f6ac970f4e8deaf1708ae53f9d6afc4d307c5c3c307746"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.7/shipyard_0.4.7_linux_armv7.tar.gz"
    sha256 "77f019c0faf5047ce59d356afb38562b8d04804febe436fbfe7a2444302b3efa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.7/shipyard_0.4.7_linux_arm64.tar.gz"
    sha256 "590b6cafdba2b524a49a754dd89e12e5b79f62707bf5265d231a2e8f2f3aa7a1"
  end

  def install
    bin.install "shipyard"
  end
end
