# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.34"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.34/shipyard_0.3.34_darwin_x86_64.zip"
    sha256 "ec27183ea12c95c5731cc1c299d27c4662ab8ea7c4c4004f97f6248a91455265"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.34/shipyard_0.3.34_darwin_arm64.zip"
    sha256 "19c19f3e7c8048fd3b574c5b19a66117b98e671d7104d3603b1d0b1a5f2667c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.34/shipyard_0.3.34_linux_x86_64.tar.gz"
    sha256 "74423dd322cf4b39101fee9effb7e4326466d14753bae7d4a167df9aed86b519"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.34/shipyard_0.3.34_linux_armv7.tar.gz"
    sha256 "5eb307b7014464096ea7e9f46516a48628ef35989513b9ca57e33f370efdfd32"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.34/shipyard_0.3.34_linux_arm64.tar.gz"
    sha256 "11229af5dbb2e413b8004565ef96b397cbb52a0287bfb19d41e1d50185b191a6"
  end

  def install
    bin.install "shipyard"
  end
end
