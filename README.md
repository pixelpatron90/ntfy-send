# Table of contents

* [About the project](#about-the-project)
* [Installation](#installation)
* [Usage](#usage)
* [Authors](#authors)
* [License](#license)

# About the project

A simple ntfy server addon.

# Installation

Clone this repo:
```
git clone https://github.com/pixelpatron90/ntfy-send.git
```
Change directory to
```
cd ntfy-send
```

In order to use this script from everywhere and type ntfy-send instead ./ntfy-send.sh add it to /usr/bin/ folder

```
mv ntfy-send.sh /usr/bin/ntfy-send
```

To run this script we should add permission

```
chmod +x /usr/bin/ntfy-send
```

Owner of all files in /usr/bin is root user. So let’s do the same with our script:

```
chown root:root /usr/bin/ntfy-send
```

# Usage

```
ntfy-send "Title" "Message"
```

# Authors

* [evarioooo](https://github.com/evarioooo)
* [justin](https://github.com/evarioooo)

# License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
