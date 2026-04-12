# Table of contents

* [Preface](#preface)
* [About this repo](#about-this-repo)
* [Quick Overview](#quick-overview)
* [Installation](#installation)
* [Usage](#usage)
* [Authors](#authors)
* [License](#license)

# Preface
--

# About this repo

A lightweight ntfy addon that allows you to quickly and easily send notifications to your ntfy server directly from the shell.

Perfect for:

* - 🔔 System notifications  
* - 🖥️ Server monitoring  
* - 🔐 SSH login alerts  
* - ⚙️ Automation & scripting  

# Quick Overview
--

# Installation

### 🔽 Clone the repository

```
git clone https://github.com/maralexofficial/ntfy-send.git
```

### 📂 Change directory

```
cd ntfy-send
```

### 🚀 Make it available system-wide

```
cp ntfy-send.sh /usr/bin/ntfy-send
cp ssh-login-notify.sh /usr/bin/ssh-login-notify.
```

### Edit your enviremont infos

```
mkdir /etc/ntfy-send
cp .env.example /etc/ntfy-send/.env
```

```
nano /etc/ntfy-send/.ENV
```

### 🔐 Make it executable

```
chmod +x /usr/bin/ntfy-send
chmod +x /usr/bin/ssh-login-notify.sh
```

### 👑 Set ownership to root

```
chown root:root /usr/bin/ntfy-send
```

### BONUS: SSH login notifications

```
nano /etc/pam.d/sshd
```

Add the line at bottom:

```
session optional pam_exec.so /usr/bin/ssh-login-notify
```

# Usage
--

# Authors

* [maralexofficial](https://github.com/maralexofficial)

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.