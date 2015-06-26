require "formula"

class Kakoune < Formula
  homepage "https://github.com/mawww/kakoune"
  head "https://github.com/tduzan/kakoune.git"

  depends_on 'boost'

  def install
    cd 'src' do
      system "make", "install", "PREFIX=#{prefix}"
    end
  end
end
