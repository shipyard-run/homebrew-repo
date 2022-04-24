# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.50"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.50/shipyard_0.3.50_darwin_x86_64.zip"
    sha256 "cec37e02c8f1898ba6422cd142e75d3cd3a8786865722f93c568633dcb07368c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.50/shipyard_0.3.50_darwin_arm64.zip"
    sha256 "480ba0a85a703ef62db158335d6fc609e79eec3791d80f597c4ee537b546951e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.50/shipyard_0.3.50_linux_x86_64.tar.gz"
    sha256 "02b58b7b3796a5c0bd2a253c632250229e04cd24f8f64bb5ad47049aef7d153c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.50/shipyard_0.3.50_linux_armv7.tar.gz"
    sha256 "cab1dc19e8d992709a0a1d51e302047c42bf559ba8698988f7c2000213ef0ba3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.50/shipyard_0.3.50_linux_arm64.tar.gz"
    sha256 "90ede570e9ff8685627273031e5c977cf485cff83e76875f92b4288fe81f98a8"
  end

  def install
    bin.install "shipyard"
  end
end
