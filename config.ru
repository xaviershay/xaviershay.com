use Rack::Static, :urls => %w(/images /id), :root => "public"
def redirect_to(url)
  [
    303,
    {
      'Location' => url
    },
    []
  ]
end
run(lambda do |env|
  if env['PATH_INFO'] =~ %r{\A/ruby-style-guide/?}
    redirect_to 'http://xaviershay.github.io/writing/docs/ruby_style_guide.html'
  else
    [
      200,
      {
        'Content-Type' => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  end
end)
