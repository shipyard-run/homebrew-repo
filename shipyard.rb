# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.21"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.21/shipyard_0.3.21_Darwin_x86_64.zip"
    sha256 "db619486e373cb9eace24440df839b58bd3e0a1e8dde7bb5d99f57f98a3eeb15"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.21/shipyard_0.3.21_Darwin_arm64.zip"
    sha256 "a61362230fc25abe12c8639e94ec456531cca9b5e8ebf6a4625de969380d7fe3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.21/shipyard_0.3.21_Linux_x86_64.tar.gz"
    sha256 "1531f360e56f95bed461bda87f9ed9ed7026de26adfe4b36c6fc2d7df9c33318"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.21/shipyard_0.3.21_Linux_armv7.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.21/shipyard_0.3.21_Linux_arm64.tar.gz"
    sha256 "414dc3c0cb0bdadf62ef12b6f56735157d62c9e3d1b05cc2ab393b1f8854ab8c"
  end

  def install
    bin.install "shipyard"
  end
end
