module: {
  rules:[
    {
      test: /\.js$/,
      exclude: /node_modules/,
      use: [
        {
          loader: 'babel-loader',
          options:  {
            presets: [
              ['react'],
              ['@babel/env',
                {
                  "targets": {
                      "ie": 11
                  },
                  // polyfillを自動でインポート
                  "useBuiltIns": "usage"
                }
              ]
            ]
          }
        }
      ]
    }
  ]
}
