# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.12"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.12/shipyard_0.4.12_darwin_x86_64.zip"
    sha256 "d84fd78282937d13f4c652f545882bf94e4e96996ebf37326737ea6293775ec7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.12/shipyard_0.4.12_darwin_arm64.zip"
    sha256 "8579d4a8d407b2703a95e396e751b6b01564d58b541c193ed4bb22696b56bb7b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.12/shipyard_0.4.12_linux_x86_64.tar.gz"
    sha256 "0d67162f0ddb59500ec5c302c34e71b386666dc177d4948f0f10eeb6d5d5ac7b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.12/shipyard_0.4.12_linux_armv7.tar.gz"
    sha256 "4d56c1004cf177b36b97c04461e7c718b08390130e12677e095db1efdf6a8e1d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.12/shipyard_0.4.12_linux_arm64.tar.gz"
    sha256 "1c29e1ccf7d60271ca5d8a51e379ecce6310427a9fb693b34a4806176c0a79c3"
  end

  def install
    bin.install "shipyard"
  end
end
