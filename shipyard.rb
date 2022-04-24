# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.51"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.51/shipyard_0.3.51_darwin_x86_64.zip"
    sha256 "f9768a896d47a909daaf97fc6694ae6422c6c8aa8577d30c9a5c56304cb3e9b9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.51/shipyard_0.3.51_darwin_arm64.zip"
    sha256 "41bd01d06332c5fe9dcaaebfa97f24326c3abebb4f6a38c5c34b7e23c51e967d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.51/shipyard_0.3.51_linux_x86_64.tar.gz"
    sha256 "91e6cf202c551acc86fde71c94964423d30ac55507680d45498eaeb98ed61a3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.51/shipyard_0.3.51_linux_armv7.tar.gz"
    sha256 "30584226606bec1cff56b8106fdb174ee52eb9303cc5fe8459e740e6b9d34f13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.51/shipyard_0.3.51_linux_arm64.tar.gz"
    sha256 "6e828e43b1a96687840539fe3386a8c472dc6263643d36420bb9e3aa4c5cbe92"
  end

  def install
    bin.install "shipyard"
  end
end
