# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.56"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.56/shipyard_0.3.56_darwin_x86_64.zip"
    sha256 "a0b33932188d9741071648da7e59fe06f27f3a26f3035e54a50cebe2a5a60b7f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.56/shipyard_0.3.56_darwin_arm64.zip"
    sha256 "d8fb4b66ed26e85d33640949fe91e7d0665b141aee60d7664249d03f9c967ead"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.56/shipyard_0.3.56_linux_x86_64.tar.gz"
    sha256 "c822cadeb63db717eb51426805a65b3025c3c5fbb8efa60289cb966fa90f8f8e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.56/shipyard_0.3.56_linux_armv7.tar.gz"
    sha256 "31b2c02eecd3ecfe8d7d89abe8240e45bf1e4466c49080e3e4a55060820eefe3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.56/shipyard_0.3.56_linux_arm64.tar.gz"
    sha256 "829de05415bee452e97ca8e19fe2d548347b6cf8682a1f1c00e6971cace661b3"
  end

  def install
    bin.install "shipyard"
  end
end
