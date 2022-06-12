# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.1/shipyard_0.4.1_darwin_x86_64.zip"
    sha256 "646bfafe5cf2b3790bf2ba7670b756153a307f76ac6f01a816fdf5e52d71d986"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.1/shipyard_0.4.1_darwin_arm64.zip"
    sha256 "b1bf373828b3962c965a0f643c4f512192fdcdc9e5f801364770113fb95c2596"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.1/shipyard_0.4.1_linux_x86_64.tar.gz"
    sha256 "e6b822001afaaf1805237bfa9b214346f431ab4ee2475e384385ffa77f8e15b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.1/shipyard_0.4.1_linux_armv7.tar.gz"
    sha256 "0de90640d924748e9ff586d1842f5e1f495901e406d1b6a9586103c554dde095"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.1/shipyard_0.4.1_linux_arm64.tar.gz"
    sha256 "3cc942a37bd33ec7f7df1a92cd7709dcc80dd6aaa763c729987f6ae7c9a67b0f"
  end

  def install
    bin.install "shipyard"
  end
end
