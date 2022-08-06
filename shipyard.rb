# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.9/shipyard_0.4.9_darwin_x86_64.zip"
    sha256 "31ea3812f62c9c6201739ad476b73df675029bbf831cc635c3b10aa86aa4881e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.9/shipyard_0.4.9_darwin_arm64.zip"
    sha256 "e76e9e8ea99cf5d0b0a40675b056d999cc53d800fecdecc7a8cdcd751c5b9a31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.9/shipyard_0.4.9_linux_x86_64.tar.gz"
    sha256 "40adb241209edd75ffbdb5d231e0bc387ba3d66d6697ce501ca884719828c7e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.9/shipyard_0.4.9_linux_armv7.tar.gz"
    sha256 "26745cd462ec12e2787f034a1a5ad5180f849e7a8a164c6f7aeeb02b0179886e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.9/shipyard_0.4.9_linux_arm64.tar.gz"
    sha256 "eb093f331cd5e9f3b7347ae71152d00f07ede34f85a28aea666ea84c37d950ea"
  end

  def install
    bin.install "shipyard"
  end
end
