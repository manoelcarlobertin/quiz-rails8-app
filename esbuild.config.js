const path = require("path")
const esbuild = require("esbuild")

esbuild.build({
  entryPoints: ["app/javascript/application.js"],
  bundle: true,
  outdir: "app/assets/builds",
  loader: { ".js": "jsx" },
  target: "es2017",
  sourcemap: true,
  watch: process.argv.includes("--watch"),
}).catch(() => process.exit(1))
