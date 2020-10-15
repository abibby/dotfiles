#!/usr/bin/env node
//@ts-check

const { promises: fs } = require("fs");
const { exec } = require("child_process");

const startComment = "# Mero domains start";
const endComment = "# Mero domains end";

/**
 * @param {string} command
 * @returns {Promise<{stdout: string, stderr:string}>}
 */
function pexec(command) {
  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error !== null) {
        reject(error);
        return;
      }
      resolve({
        stdout,
        stderr,
      });
    });
  });
}

async function main() {
  let f = (await fs.readFile("/etc/hosts")).toString();

  if (!f.includes(startComment)) {
    f += "\n" + startComment + "\n" + endComment + "\n";
  }
  const { stdout } = await pexec("echo 'select slug from organizations' | sql");
  const domains = stdout
    .split("\n")
    .filter((slug) => slug !== "")
    .map((slug) => slug + ".mero.test")
    .map((domain) => "127.0.0.1 " + domain)
    .join("\n");

  const re = new RegExp(startComment + "[\\s\\S]*" + endComment, "g");
  f = f.replace(re, `${startComment}\n${domains}\n${endComment}`);

  await fs.writeFile("/etc/hosts", f);
}
main();
