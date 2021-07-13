#!/usr/bin/env node

const { readFileSync } = require("fs");

const a = readFileSync("/home/adam/.config/Code - OSS/storage.json");

const data = JSON.parse(a.toString());

console.log(
  data.openedPathsList.entries
    .map((f) => {
      if (f.folderUri) {
        return f.folderUri;
      }
      if (f.fileUri) {
        return f.fileUri;
      }
      if (f.workspace) {
        return f.workspace.configPath;
      }
      throw new Error("invalid type");
    })
    .map((f) => f.slice("file://".length))
    .join("\n")
);
