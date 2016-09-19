const htmlStandards = require('reshape-standard')
const cssStandards = require('spike-css-standards')
const latest = require('babel-preset-latest')

module.exports = {
  devtool: 'source-map',
  matchers: {
    html: '**/*.sgr',
    css: '**/*.sss'
  },
  ignore: ['**/layout.sgr', '**/_*', '**/.*'],
  reshape: (ctx) => {
    return htmlStandards({ webpack: ctx, delimiters: ['<%', '%>'], retext: [] })
  },
  postcss: (ctx) => {
    return cssStandards({ webpack: ctx })
  },
  babel: { presets: [latest] }
}
