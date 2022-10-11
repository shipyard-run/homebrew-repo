# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.14"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.14/shipyard_0.4.14_darwin_x86_64.zip"
    sha256 "35e8b20c820db375e3dba40cc2e033da7de3839532977e711a97abe13aaf8d74"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.14/shipyard_0.4.14_darwin_arm64.zip"
    sha256 "5d52f23605a93de9b4c645316ac74cfd02b7feae32656ef17303984c2d2631ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.14/shipyard_0.4.14_linux_x86_64.tar.gz"
    sha256 "936277e0306c27dd57c9bf634f00da0003fd97da916755a9e2a34b31270a52b7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.14/shipyard_0.4.14_linux_armv7.tar.gz"
    sha256 "42dc75cec07aef1066db3e349820aa9037b015971bfe98c4f440f570818cccc2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.14/shipyard_0.4.14_linux_arm64.tar.gz"
    sha256 "389b7af9057084179222dccbb98af93ed96903851a3a16e6ca56e993c7ecc093"
  end

  def install
    bin.install "shipyard"
  end
end
