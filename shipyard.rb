# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.15"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.15/shipyard_0.3.15_Darwin_x86_64.zip"
    sha256 "52886859b95c7dbdbcab533f856e903374d22942833e29367aae5b457bcf9fb3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.15/shipyard_0.3.15_Darwin_arm64.zip"
    sha256 "6e315e0607e1213dde88553154016ebcf8a7bae0c004e6a6f31eacd88cfe37c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.15/shipyard_0.3.15_Linux_x86_64.tar.gz"
    sha256 "66bca06d8bc01f70a6cfbc454d667e0e9542f46679fa3412f307fb0f86a2a84b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.15/shipyard_0.3.15_Linux_armv7.tar.gz"
    sha256 "e31a952de40996351b8eb6df79df875822286ab5df310a54db8f6a6809eb82ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.15/shipyard_0.3.15_Linux_arm64.tar.gz"
    sha256 "2c22a8886249ef026d43ffdd3312f571b8334762302eed069e7df8c21ff95bad"
  end

  def install
    bin.install "shipyard"
  end
end
