# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.8/shipyard_0.4.8_darwin_x86_64.zip"
    sha256 "bc73408a866e5d9fab7aff069d51e94b6edb74be42b6ec6d43df4042330d681b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.8/shipyard_0.4.8_darwin_arm64.zip"
    sha256 "4ac9ca1b517502e50c83af8e718751f490ef9e6bcf30f03208b17a93d3c869b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.8/shipyard_0.4.8_linux_x86_64.tar.gz"
    sha256 "e58216f1e5a812aca3935c366b8e1ba8993e6a3c2c89be62c6e7355ad1012bc2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.8/shipyard_0.4.8_linux_armv7.tar.gz"
    sha256 "8975f81d8d1da769e6f02d763952673d35a458168ab496219bcaa5b22afe9f9f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.8/shipyard_0.4.8_linux_arm64.tar.gz"
    sha256 "e5423c8f402e1444bd8945258e309cfe8d12d1991bc08a9b5fa48fbfa1c90d62"
  end

  def install
    bin.install "shipyard"
  end
end
