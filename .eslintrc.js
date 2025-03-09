// https://docs.expo.dev/guides/using-eslint/
module.exports = {
  extends: ['expo', 'prettier'],
  plugins: ['prettier'],
  ignorePatterns: ['/dist/*'],
  rules: {
    'prettier/prettier': 'error',
    // todo: remove and fix warnings
    // https://react.dev/reference/react/hooks
    // https://react.dev/reference/rules/rules-of-hooks
    // https://github.com/facebook/react/tree/main/packages/eslint-plugin-react-hooks
    'react-hooks/exhaustive-deps': 'off',
  },
};
