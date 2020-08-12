module.exports = {
  "plugins": ["jest"],
  "extends": ["eslint:recommended", "plugin:jest/recommended", "airbnb-base"],
  "rules": {
    "max-len": [
      "error",
      {
        "code": 90,
        "tabWidth": 2,
      },
    ],
    "import/no-unresolved": [
      "error",
      {
        "ignore": ['$'],
      },
    ],
    "jest/no-disabled-tests": "warn",
    "jest/no-focused-tests": "error",
    "jest/no-identical-title": "error",
    "jest/no-jest-import": "error",
    "jest/prefer-to-have-length": "warn",
    "jest/valid-expect": "error",
    "no-multiple-empty-lines": ["warn", { "max": 2, "maxEOF": 1 }],
  },
}
