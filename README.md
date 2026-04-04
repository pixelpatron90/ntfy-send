# 🚀 ntfy-send

A simple but powerful ntfy CLI tool for sending notifications directly from your terminal.

---

## 📚 Table of Contents

- About the Project
- Installation
- Usage
- Authors
- License

---

## 📦 About the Project

A lightweight ntfy addon that allows you to quickly and easily send notifications to your ntfy server directly from the shell.

Perfect for:

- 🔔 System notifications  
- 🖥️ Server monitoring  
- 🔐 SSH login alerts  
- ⚙️ Automation & scripting  

---

## ⚙️ Installation

### 🔽 Clone the repository

git clone https://github.com/pixelpatron90/ntfy-send.git

### 📂 Change directory

cd ntfy-send

### 🚀 Make it available system-wide

cp ntfy-send.sh /usr/bin/ntfy-send
cp ssh-login-notify.sh /usr/bin

### Edit your enviremont infos

nano .env.example

mkdir /etc/ntfy-send
cp .env.example /etc/ntfy-send/.env

### 🔐 Make it executable

chmod +x /usr/bin/ntfy-send
chmod +x ssh-login-notify.sh

### 👑 Set ownership to root

chown root:root /usr/bin/ntfy-send

### Add to ssh pam session

nano /etc/pam.d/sshd

Add the line at bottom:

session optional pam_exec.so /usr/local/bin/ssh-login-notify.sh

---

## 💡 Usage

### 🔔 Send a message using the default topic (hostname as title)

ntfy-send "Message"

---

### 🏷️ Send a message with a custom title

ntfy-send "Title" "Message"

---

### 🚨 Send a message with highest priority (1 = low, 5 = high)

ntfy-send DEFAULT "Title" "Message" --prio=5

---

### 🎯 Send a message to a custom topic with priority

ntfy-send "custom_topic" "Title" "Message" --prio=5

---

### 🏷️ Send a message with tags

ntfy-send "Title" "Message" --tags=warning,server

---

## 🔥 Optional (Bonus)

You can use this tool for SSH login notifications:

/etc/ssh/sshrc

👉 This allows you to receive automatic alerts on every SSH login 🚀

---

## 👨‍💻 Authors

- evarioooo
- justin

---

## 📄 License

This project is licensed under the MIT License.
