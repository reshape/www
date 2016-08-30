extends(src='layout.sml')
  block(name='content')
    #intro.container
      h2(md) Reshape is a tool for transforming static html with javascript plugins.<br>Think of it like [postcss](http://postcss.org/) or [babel](http://babeljs.io/), but for html.

      a.gh(href='https://github.com/reshape/reshape')
        .icon
        span Source on Github

    #example.container.xl
      include(src='_code_examples.sml')
