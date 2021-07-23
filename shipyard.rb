# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.13"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.13/shipyard_0.3.13_Darwin_x86_64.zip"
    sha256 "8d58f56f12c5f5a761a97a16ddde7621737ea73119d988778fc5e2e7a2b5e05c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.13/shipyard_0.3.13_Darwin_arm64.zip"
    sha256 "55b3ebb18afb21bab002c616ea6c463ce5c4d5ed652cd768ccb953632d677ea8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.13/shipyard_0.3.13_Linux_x86_64.tar.gz"
    sha256 "3ef28949412c61c457f72101f817c532c1f68ccb7eb457ac29b969896c23ba1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.13/shipyard_0.3.13_Linux_armv7.tar.gz"
    sha256 "6bb7055a425d037a20b9f443b6f1e2f754540cfdb3b4cc22afd3a11de6dea3df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.13/shipyard_0.3.13_Linux_arm64.tar.gz"
    sha256 "6bc7cbb976426df093bc706a7578c260ecfebf842c3302c7f2cf532fdfa22e7d"
  end

  def install
    bin.install "shipyard"
  end
end
