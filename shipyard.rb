# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.39"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.39/shipyard_0.3.39_darwin_x86_64.zip"
    sha256 "bff187079a4f79eb7bfb2156a678b1cb0b7e650a0e0f6a3281b532e7485ab89a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.39/shipyard_0.3.39_darwin_arm64.zip"
    sha256 "0ed42a70e2e0454c23e3aab02850f613710bfdcc93816779be74898a9bbe541b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.39/shipyard_0.3.39_linux_x86_64.tar.gz"
    sha256 "2f8bf906a6c2dda3a15b438e815da87fee9f73d07f3f8c8783b357e7c93744f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.39/shipyard_0.3.39_linux_armv7.tar.gz"
    sha256 "9b2a260805f7f4e37d68bfbd43aedc25141d136b62f8a158cab298a7c391f0fc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.39/shipyard_0.3.39_linux_arm64.tar.gz"
    sha256 "5eda64849cb5a92afad9a00ae2b64edcfe5a8f371bcb47a6319811aa9d8b6684"
  end

  def install
    bin.install "shipyard"
  end
end
