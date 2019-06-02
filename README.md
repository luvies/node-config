# Node Shared Configs

This package provides a number of shared configs that can be reused across multiple projects. It currently provides configs for the following tools:

- TypeScript
- ESLint (with TS rules)
- Prettier

## Usage

### TypeScript

To use with TypeScript, you can use a config like the following:

```jsonc
{
  "extends": "@luvies/config/tsconfig.base.json",
  "compilerOptions": {
    "baseUrl": ".",
    "outDir": "build/dist",
    "module": "commonjs",
    "rootDir": "src"
    // The base tsconfig defaults to es2018
    // "target": "es2017",
    // "lib": ["es2017"]
  },
  "exclude": ["node_modules", "dist"]
}
```

### Prettier

To use with prettier, you can use the following `.prettierrc`:

```json
"@luvies/config/prettier.base.json"
```

### ESLint

To use with ESLint, you need to install the following packages:

- `eslint`
- `@typescript-eslint/parser`
- `@typescript-eslint/eslint-plugin`
- `eslint-plugin-prettier`
- `eslint-config-prettier`

You can then use the following config:

```json
{
  "root": true,
  "parserOptions": {
    "project": "./tsconfig.json"
  },
  "extends": "./node_modules/@luvies/config/eslint.base.json",
  "env": {
    "es6": true,
    "node": true
  }
}
```

#### Vue

For the Vue-specific config, you need the following packages as well:

- `eslint-plugin-vue`
- `vue-eslint-parser`
- `@vue/eslint-config-typescript`
- `@vue/eslint-config-prettier`

You then need to extend the vue config:

```json
{
  "root": true,
  "parserOptions": {
    "project": "./tsconfig.json"
  },
  "extends": "./node_modules/@luvies/config/eslint.vue.json",
  "env": {
    "es6": true
  }
}
```
