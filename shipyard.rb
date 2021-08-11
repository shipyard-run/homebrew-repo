# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.26"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.26/shipyard_0.3.26_Darwin_x86_64.zip"
    sha256 "81dd1e7908de1272d0c1d359d039c21f48a3fa503c511f7e4887121b58898b96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.26/shipyard_0.3.26_Darwin_arm64.zip"
    sha256 "5bfb88d5bf51b4876bb839351a316aa3442f7af6998a51ca608125017340c314"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.26/shipyard_0.3.26_Linux_x86_64.tar.gz"
    sha256 "2b7955f132aa64b3eadefc1ac12805240e74d8f657cd6b45ede52b6e1b6c588b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.26/shipyard_0.3.26_Linux_armv7.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.26/shipyard_0.3.26_Linux_arm64.tar.gz"
    sha256 "f645f67edae895e5a31157d8e04da0771fd44242db0ade10fd20a5ab2e4fbd79"
  end

  def install
    bin.install "shipyard"
  end
end
