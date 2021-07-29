# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.20"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v##VERSION##/shipyard_0.3.20_Darwin_x86_64.zip"
    sha256 ""
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v##VERSION##/shipyard_0.3.20_Darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v##VERSION##/shipyard_0.3.20_Linux_x86_64.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v##VERSION##/shipyard_0.3.20_Linux_armv7.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v##VERSION##/shipyard_0.3.20_Linux_arm64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "shipyard"
  end
end
