# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.44"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.44/shipyard_0.3.44_darwin_x86_64.zip"
    sha256 "bfa4b767a91b5d891ad5c434483f58829e011e83dca3c3f63a4270d17279c07b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.44/shipyard_0.3.44_darwin_arm64.zip"
    sha256 "51fe3936e880fc7da7e1af042fe149fe389b838e82232eee149218185df9bb33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.44/shipyard_0.3.44_linux_x86_64.tar.gz"
    sha256 "58ea4e04ee00dc9508e6caf065e60a5a65b12d6a799e6437b6801181cf1897ba"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.44/shipyard_0.3.44_linux_armv7.tar.gz"
    sha256 "e149ecb1d9a745fabd86525d5ad945359e0675393e84e61b4a68c0b662bebb91"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.44/shipyard_0.3.44_linux_arm64.tar.gz"
    sha256 "59a5a328564b7d88877c1eeb8844d280c8d8f1e9074678638924bda4963cc70d"
  end

  def install
    bin.install "shipyard"
  end
end
