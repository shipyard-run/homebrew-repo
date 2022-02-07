# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.42"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.42/shipyard_0.3.42_darwin_x86_64.zip"
    sha256 "28a121ecf6686c9e80f249246d43538258acc98eb7ba9cbc0cbef0b8992f53e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.42/shipyard_0.3.42_darwin_arm64.zip"
    sha256 "af99304d21ebeb053e33634c0bbea928317a065eb455dfb9272c300770dd60f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.42/shipyard_0.3.42_linux_x86_64.tar.gz"
    sha256 "aaee41e23c922e2a51c97abbffc970e54b396b75a7f2f61a322e186b7d0f1b4b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.42/shipyard_0.3.42_linux_armv7.tar.gz"
    sha256 "6dc1ff7afdf631f113c192ba53fa87edde0faafc81d610de7fc441464e3eb88f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.42/shipyard_0.3.42_linux_arm64.tar.gz"
    sha256 "b5a126283a4f28663d82c61e885e0ee10e74362236bca0b9a25690b8542a69a4"
  end

  def install
    bin.install "shipyard"
  end
end
