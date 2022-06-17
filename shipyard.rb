# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.3/shipyard_0.4.3_darwin_x86_64.zip"
    sha256 "05bef665d27d9960382b3eade33dc27551c71b77a43116a13968625e9b46f153"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.3/shipyard_0.4.3_darwin_arm64.zip"
    sha256 "7517b39aa02793c761c20a1493c35bae11faf092f8a4549027e2250bf5e99e2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.3/shipyard_0.4.3_linux_x86_64.tar.gz"
    sha256 "6796ea9ed2f9e03523dd451c9e0a1a77fecc39af2b74ac08997b2929c255fa40"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.3/shipyard_0.4.3_linux_armv7.tar.gz"
    sha256 "af9f2636bae7894c5fbf46857783352228f83d7e05a3a82bda2059f2112380ab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.3/shipyard_0.4.3_linux_arm64.tar.gz"
    sha256 "d01f69d76f70f9aea8d2bc00f80edc301fe245c32f89c3d48a8b5c1aed554cfd"
  end

  def install
    bin.install "shipyard"
  end
end
