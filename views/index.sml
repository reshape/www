extends(src='layout.sml')
  block(name='content')
    #intro.container
      h2(md) Reshape is a tool for transforming static html with javascript plugins.<br>Think of it like [postcss](http://postcss.org/) or [babel](http://babeljs.io/), but for html.

      a.gh(href='https://github.com/reshape/reshape')
        .icon
        span Source on Github

    #example.container.xl
      include(src='_code_examples.sml')

    #features.container
      h3 We've Got Features for Days!

      ul
        li
          .icon.globe
          p Can produce client-side templates for rich javascript apps, or static html. Works in static sites and on servers!
        li
          .icon.swap
          p(md) Accepts custom parsers and code generators. We made a language that [almost exactly matches jade’s features](https://github.com/reshape/sugarml#example) : )
        li
          .icon.plug
          p(md) Reshape’s simple, clear plugin API makes it easy to make your own plugin. Plus, we have tons in the [plugin directory](http://plugins.reshape.ml)!
        li
          .icon.flag
          p(md) Super clear and explicit [error traces](https://github.com/reshape/reshape#error-handling) mean no confusion for users when dealing with any plugin!
        li
          .icon.tools
          p(md) If a feature exists, you can use it with reshape. We already have plugins for [layouts](https://github.com/reshape/layouts), [includes](https://github.com/reshape/include), [loops](https://github.com/reshape/expressions#locals), [conditionals](https://github.com/reshape/expressions#conditional-logic), and more.
