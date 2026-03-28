# typed: false
# frozen_string_literal: true

class Daoflow < Formula
  desc "Self-hosted deployment platform — Docker Compose made production-ready"
  homepage "https://daoflow.dev"
  version "0.6.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    if Hardware::CPU.intel?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    if Hardware::CPU.intel?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "daoflow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/daoflow --cli-version")
  end
end
