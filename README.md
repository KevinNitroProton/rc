# ✨ Rclone-GA ✨ ![Rclone running command Status](../../actions/workflows/Run%20your%20rclone%20comands.yml/badge.svg)

This project help you run your rclone command in Github Action, which should be useful for `rclone copy`, `rclone sync`,... transfering cloud to cloud...

---

# DISCLAIMER: ⚠️

Because it may use lots of bandwidth of Github Action, this repo may risk your Github account. You should use it in your another account.

---

## HOW TO USE: 📃

## 1️⃣ HAVE YOUR OWN REPO

- Fork this repo
- If you want to make your repo private, then choose **Use this template** to **Create a new repository**

## 2️⃣ CREATE RCLONE.CONF

### OPTION 1: Edit directly

> Should use only for private repo

- Create a file name `rclone.conf`
- Fill in [`rclone.conf`][rclone.conf] which you created in the previous step

### OPTION 2: Use secret

- Create action secret
- **Name**: `RCLONE_CONFIG_FILE`<br>**Value**: Fill in the raw link of `rlcone.conf` file
  > You can make the raw link from gist

## 3️⃣ FILL IN YOUR RCLONE COMMANDS

> Warning: Before fill in your command, read the [notice](#notice-⚠️) below

### OPTION 1: Edit directly

- Fill in [`YOUR_RCLONE_COMMANDS.txt`](YOUR_RCLONE_COMMANDS.txt)

### OPTION 2: Use secret

- Create action secret
- **Name**: `COMMAND`<br>**Value**: Fill in your commands

---

# RUN: 🏃‍♂️

> You can do either these options

## Trigger from [Action tab](../../actions/workflows)

- Go to [Action tab](../../actions/workflows)
- Click on `Run Rclone commands` workflow
- Click on `Run workflow`, choose branch you want to trigger _(Default is `Main`)_
- Click on colourful `Run workflow` button

## Trigger when push `Run Rclone commands.txt`

If you push `Run Rclone commands.txt`, it will automatically run the workflow on that branch _(Or `Main` branch only IDK haven't tested :v)_

## Star the repo

When you star your repo, it will automatically run the workflow on that branch _(Or `Main` branch only IDK haven't tested :v)_

---

# NOTICE: ⚠️

## COMMAND:

- Because there is something suck which make the end of the command has a character `␍`, or it will show `\r` in the log of github workflow. So, I suggest if you use copy, sync, move,... command, you should put the `destination` at the end of the command, which will make the file / folder's name have `␍`. You can delete it later 😪

- If you don't follow this, it will highly get error!
