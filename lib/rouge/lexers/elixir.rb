module Rouge
  module Lexers
    class Elixir < RegexLexer
      desc 'The Elixir Programming language. (elixir-lang.org)'
      tag 'elixir'
      aliases 'elixir'
      filenames '*.ex', '*.exs'

      mimetypes 'text/x-elixir', 'application/x-elixir'

      def self.analyze_text(text)
        return 0.1 if text =~ /(defrecord|defmodule)/
      end

      state :root do
      end
    end
  end
end

