#!/usr/bin/env node
//@ts-check

const notificationFile = "/home/adam/.notification_list";

const fs = require("fs").promises;

/**
 *
 * @param {string} appname
 * @param {string} summary
 * @param {string} body
 * @param {string} icon
 * @param {string} urgency
 */
async function main(appname, summary, body, icon, urgency) {
  if (urgency === "LOW") {
    return;
  }
  await fs.appendFile(
    notificationFile,
    JSON.stringify({ appname, summary, body, icon, urgency }) + "\n"
  );
}

//@ts-ignore
main(...process.argv.slice(2));
