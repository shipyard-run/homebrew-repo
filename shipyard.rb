# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.54"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.54/shipyard_0.3.54_darwin_x86_64.zip"
    sha256 "8a1a0e45b1eb9091eaef7b4b297c0765803b12b22bc7acc5392e89531874b382"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.54/shipyard_0.3.54_darwin_arm64.zip"
    sha256 "be4f04b6e0d6385728f8e6755b1dccb7c7637b2784c98e3decfb1812003ac5ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.54/shipyard_0.3.54_linux_x86_64.tar.gz"
    sha256 "638230fcaa3b81d67b584f19ebfd205a3b408dd565180c7847b189dbbaf1b397"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.54/shipyard_0.3.54_linux_armv7.tar.gz"
    sha256 "bfe3633b7daa1737d98436c522fae9543127a2a21b03ec7924ca42735089352d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.54/shipyard_0.3.54_linux_arm64.tar.gz"
    sha256 "bae43273072868074e6954720ab49530508577d110fcd45bf79d37cb2da266b7"
  end

  def install
    bin.install "shipyard"
  end
end
