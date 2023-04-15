# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.5.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.2/shipyard_0.5.2_darwin_x86_64.zip"
    sha256 "0d1e2f8ba86a2b7535af82e58f3af55f6cc20cb70152c3b7952cbbdedc142f3f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.2/shipyard_0.5.2_darwin_arm64.zip"
    sha256 "cd3dda39596b27ad3825204ffaa04b22e24f8cc0f04636af82ddbb3b7daf6204"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.2/shipyard_0.5.2_linux_x86_64.tar.gz"
    sha256 "84bce27c545688bfc77eadda56a3dafd0d3bb62e02f9cf448c1f9b1304d7f953"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.2/shipyard_0.5.2_linux_armv7.tar.gz"
    sha256 "82789323d35ee7a5b2b27d11bcde5dac62c6ec77f4700aaf730b59f10384087a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.5.2/shipyard_0.5.2_linux_arm64.tar.gz"
    sha256 "25cfea313881383f7d6fd94597a2f0a3773e9236b7e4197ee28e209a5853586c"
  end

  def install
    bin.install "shipyard"
  end
end
