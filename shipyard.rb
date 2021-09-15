# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.30"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.30/shipyard_0.3.30_darwin_x86_64.zip"
    sha256 "c44192d678baef2ac6f54beeb9383e9fdccf183ec95fa0cffb4bfc57738f6d8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.30/shipyard_0.3.30_darwin_arm64.zip"
    sha256 "f4721b8f82d1cc5ae5148d37d6ba7701e63d3ce77fef7ff456212ba636aade41"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.30/shipyard_0.3.30_linux_x86_64.tar.gz"
    sha256 "2553ee47a2475e4bfc6d0d3efe65dd24c130d399acc5f149af65146aabd16eb8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.30/shipyard_0.3.30_linux_armv7.tar.gz"
    sha256 "cc14caa46f8f6e4e1a07f2aabd4f4ca632dd39d04e51802deb95bbc74ce9ab98"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.30/shipyard_0.3.30_linux_arm64.tar.gz"
    sha256 "f55251e2eeec2c87e589ed7958cb9960400d25e80fb5f24d8fc60630bb67c4f1"
  end

  def install
    bin.install "shipyard"
  end
end
