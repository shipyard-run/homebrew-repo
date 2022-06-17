# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.4/shipyard_0.4.4_darwin_x86_64.zip"
    sha256 "80fcf653bcd17f273b7830b10629abcf614bab7bfb8651edb90cf0316954830e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.4/shipyard_0.4.4_darwin_arm64.zip"
    sha256 "72ef31c0c63ca5e2c32a1b188ab5d460b3e211414e8c5cd82becd227a08610c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.4/shipyard_0.4.4_linux_x86_64.tar.gz"
    sha256 "91738a3e964662e17b440fabdbb51513eb9304b6ec67a5169067178850ad1de4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.4/shipyard_0.4.4_linux_armv7.tar.gz"
    sha256 "e7d9313f9c131f0ca8852480eabb81feef807487caf8d8d4b80d590a81bd0842"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.4/shipyard_0.4.4_linux_arm64.tar.gz"
    sha256 "8f9f2bed3a39019ac679a21dbfb844a866678b5e197b0df8d62862465ffb2285"
  end

  def install
    bin.install "shipyard"
  end
end
