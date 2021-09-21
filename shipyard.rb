# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.32"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.32/shipyard_0.3.32_darwin_x86_64.zip"
    sha256 "b120c84ca71c0109ca4587e049102506e2c8ec0c985b0838fdf3327efad463cf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.32/shipyard_0.3.32_darwin_arm64.zip"
    sha256 "436e9abbf27851acd8f74458687a8b1d1ffdd370daaa7206d9ba3762cac75246"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.32/shipyard_0.3.32_linux_x86_64.tar.gz"
    sha256 "e52eff0c3c3c82f28ddf8889a67b28199d17ef98d30a6aeac192d65b44f078ac"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.32/shipyard_0.3.32_linux_armv7.tar.gz"
    sha256 "cbe70f0b88f18bdfaaed8c8bb2bb97b1bfdd401dd66d68d277a84375b13a9cba"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.32/shipyard_0.3.32_linux_arm64.tar.gz"
    sha256 "fc743104c60aa2cc36a7d827f06441784a65cee07dcb40bece1a1e8073813d77"
  end

  def install
    bin.install "shipyard"
  end
end
