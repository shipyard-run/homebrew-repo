# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.29"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.29/shipyard_0.3.29_darwin_x86_64.zip"
    sha256 "33bae630c310e12eb280065662794220fd7d432609947a39ffa8818a7d0b5b0a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.29/shipyard_0.3.29_darwin_arm64.zip"
    sha256 "432fe1e8dc234f2b2a10a7bcdc5d62b75a9a93eb20b32571c04d4a3f4a8b05cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.29/shipyard_0.3.29_linux_x86_64.tar.gz"
    sha256 "a7964e392ad5602f37cd183757f62da0409fcada37a5cfafbf83497c22501c83"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.29/shipyard_0.3.29_linux_armv7.tar.gz"
    sha256 "7527520ff6fc639d8fc4b0a6d37f6f1cdc44b3fbc08f52da51a5fb79eb6b5777"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.29/shipyard_0.3.29_linux_arm64.tar.gz"
    sha256 "5fbe1ac0875d89c0f2d22c3546b03c7f73811d46052283fa3f583ec99d6f5e31"
  end

  def install
    bin.install "shipyard"
  end
end
