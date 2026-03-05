class IflowCli < Formula
  desc "AI-powered CLI that embeds in your terminal for coding tasks and workflow automation"
  homepage "https://platform.iflow.cn"
  url "https://registry.npmjs.org/@iflow-ai/iflow-cli/-/iflow-cli-0.5.15.tgz"
  sha256 "de04af5f3c0e6f45f72704afa765795930e6f2657fa02dfea0ac72338348256c"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "iflow", shell_output("#{bin}/iflow --version 2>&1", 0)
  end
end
