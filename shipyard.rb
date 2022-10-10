# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.13/shipyard_0.4.13_darwin_x86_64.zip"
    sha256 "e74f0d0006ded3a65c573a6c03b39280c58826a7b53d6c97664496786ca6fd92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.13/shipyard_0.4.13_darwin_arm64.zip"
    sha256 "037db3d62b9ac17029c84c76cdadcdb0b5153cd0de130bde6b59d14702f39ffa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.13/shipyard_0.4.13_linux_x86_64.tar.gz"
    sha256 "09a33e46e348b520e65d0c98f5ac26af71f9d74e14d85046b503260b7ed38390"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.13/shipyard_0.4.13_linux_armv7.tar.gz"
    sha256 "5e7868d3b5256056821da89598d5defe1c69fba654782faa8550bc8c52e4dd6b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.13/shipyard_0.4.13_linux_arm64.tar.gz"
    sha256 "90be46bcd8c8d57c1e49166dd3b049777df28faafde93d79218b11d3905eeca8"
  end

  def install
    bin.install "shipyard"
  end
end
