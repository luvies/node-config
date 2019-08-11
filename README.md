# Node Shared Configs

This package provides a number of shared configs that can be reused across multiple projects. It currently provides configs for the following tools:

- TypeScript
- ESLint (with TS rules)
- Prettier

All the base dependencies are given as peer dependencies to ensure packages are installed & to allow pushing update warnings by bumping the minimum versions.

## Usage

### TypeScript

To use with TypeScript, you can use a config like the following:

```jsonc
{
  "extends": "@luvies/config/tsconfig.base.json",
  "compilerOptions": {
    "baseUrl": ".",
    "outDir": "dist",
    "module": "commonjs",
    "rootDir": "src"
    // The base tsconfig defaults to es2018
    // "target": "es2017",
    // "lib": ["es2017"]
  },
  "exclude": ["node_modules", "dist"]
}
```

TypeScript is only included as a peer dependency as it's much more version dependent.

### Prettier

Use the following `.prettierrc` to use the base config:

```json
"@luvies/config/prettier.base.json"
```

### ESLint

These are currently the packages that are used (all are specified as peer dependencies):

- `eslint`
- `@typescript-eslint/parser`
- `@typescript-eslint/eslint-plugin`
- `eslint-plugin-prettier`
- `eslint-config-prettier`
- `eslint-plugin-sort-imports-es6-autofix`

Use the following config to extend the shared one:

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

#### React

For the React-specific config, you need the following extra packages (they are not added as peer dependencies since only React projects will use them):

- `eslint-plugin-react`

You then need to extend the react config:

```json
{
  "root": true,
  "parserOptions": {
    "project": "./tsconfig.json"
  },
  "extends": "./node_modules/@luvies/config/eslint.react.json",
  "env": {
    "es6": true
  }
}
```

#### Vue

For the Vue-specific config, you need the following extra packages (they are not added as peer dependencies since only Vue projects will use them):

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
