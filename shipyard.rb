# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.22"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.22/shipyard_0.3.22_Darwin_x86_64.zip"
    sha256 "36e087d738302ab574d4d615fbedcff54384bda13b3f0fcfe935c50a9cf2eb18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.22/shipyard_0.3.22_Darwin_arm64.zip"
    sha256 "e8b4490a112826c43c97660aa69bb134bdcdf63688e98e8112cfa9855ccfc7e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.22/shipyard_0.3.22_Linux_x86_64.tar.gz"
    sha256 "f669dd8369ad05e7869c03dd2b9e2e9cfd3ef8d248e0cd49f1e873c6a5208dee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.22/shipyard_0.3.22_Linux_armv7.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.22/shipyard_0.3.22_Linux_arm64.tar.gz"
    sha256 "718bda492b52d91b3ae3e137a0a9831cbe3c246067985ef11237938de036f329"
  end

  def install
    bin.install "shipyard"
  end
end
