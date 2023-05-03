# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.3/shipyard_0.5.3_darwin_x86_64.zip"
    sha256 "9b73fda20c46760d55d461cc6c437b0e10e03d9123173006d73040a9676f3081"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.3/shipyard_0.5.3_darwin_arm64.zip"
    sha256 "5dd643da6176c951b802b6e3929af5924dd51445471712b0ad07d062efe6918f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.3/shipyard_0.5.3_linux_x86_64.tar.gz"
    sha256 "e48671c1d8b00226adc68b94736e9078499f5da93be2d66c2b3f89a52c136639"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.3/shipyard_0.5.3_linux_armv7.tar.gz"
    sha256 "f3dd016afba95f03f7279c377826a3a0b7de8016ac729120c39391431cc55723"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.3/shipyard_0.5.3_linux_arm64.tar.gz"
    sha256 "c5955cadbae17a3afd3994977ba541a9da381e1deede59fc0ab5b60953146adf"
  end

  def install
    bin.install "shipyard"
  end
end
