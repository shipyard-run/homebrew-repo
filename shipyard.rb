# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.10/shipyard_0.4.10_darwin_x86_64.zip"
    sha256 "d9c2ba6d58167d57dfa8aca1441640cba975c1c945dc5e0ea97c82d60dd451cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.10/shipyard_0.4.10_darwin_arm64.zip"
    sha256 "fa9cbea645af747e725441594400237100187edd9dd080dd0cac7900359d454f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.10/shipyard_0.4.10_linux_x86_64.tar.gz"
    sha256 "939e76a2d84bae6e30bd76a0f2bc598d3049a9c9a814cff05101420ff108c28e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.10/shipyard_0.4.10_linux_armv7.tar.gz"
    sha256 "a67df35ee731c2d0ec946e6c19b2e6af931b3d60bd21b7cb8b249001d8a7cba6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.10/shipyard_0.4.10_linux_arm64.tar.gz"
    sha256 "4640484a0cdf454ebefb2161c286c5445e13d6fd3ee11f312aef1d40c4b61ea7"
  end

  def install
    bin.install "shipyard"
  end
end
