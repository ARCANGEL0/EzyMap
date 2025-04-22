# EzyMap Scanner  
## 🔍 An Interactive Nmap Menu Script

> 🧠 A terminal-based, fully interactive menu to build and run complex `nmap` scans with ease — no memorization required!

[![GitHub watchers](https://img.shields.io/github/watchers/ARCANGEL0/EzyMap.svg?style=flat-square&color=4c1)](https://github.com/ARCANGEL0/EzyMap/watchers)
[![GitHub stars](https://img.shields.io/github/stars/ARCANGEL0/EzyMap.svg?style=flat-square&color=4c1)](https://github.com/ARCANGEL0/EzyMap/stargazers)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/ARCANGEL0/EzyMap.svg?style=flat-square&color=4c1)](https://github.com/ARCANGEL0/EzyMap/pulls)
[![GitHub issues](https://img.shields.io/github/issues/ARCANGEL0/EzyMap.svg?style=flat-square&color=4c1)](https://github.com/ARCANGEL0/EzyMap/issues)
[![GitHub forks](https://img.shields.io/github/forks/ARCANGEL0/EzyMap.svg?style=flat-square&color=4c1)](https://github.com/ARCANGEL0/EzyMap/network/members)

---

## 🜅 Features

- 🎯 **Set multiple targets** — IPs, ranges, hostnames, CIDR  
- 🔄 **Toggle multiple scan types** (`-sS`, `-sV`, `-O`, `-sn`, etc.)  
- 🚀 **Control timing templates** from Paranoid to Insane (`-T0` to `-T5`)  
- 🧩 **Flag toggles** for `-6`, `-n`, `-r`, `--reason`, and more  
- 🎮 **Host discovery** flags: `PE`, `PP`, `PM`, `PS`, etc.  
- 📜 **NSE scripting**:  
  - Select from all **installed scripts** (300+!)  
  - Add by **category**: `vuln`, `auth`, `fuzzer`, etc.  
  - Pass **custom arguments**  
- 📁 **Output options**: Save as Normal, XML, Grepable, or all at once  
- ✅ **Live preview of final `nmap` command**  
- 🤓 **Friendly terminal UI** designed to speed up Nmap usage for all skill levels  

---

## 🎥 Usage Example

![Demo Usage](https://github.com/ARCANGEL0/EzyMap/raw/refs/heads/master/ezymap.gif)
---

## 🚀 Installation

```bash
git clone https://github.com/ARCANGEL0/EzyMap
cd EzyMap
chmod +x install.sh
./install.sh
```
---

## 📚 Menu Options

| Option # | Menu                 | What It Does                                    |
|----------|----------------------|--------------------------------------------------|
| 1        | Set Targets           | IPs, CIDR blocks, hostnames                     |
| 2        | Scan Types            | Toggle multiple scans (`-sS`, `-sV`, etc.)      |
| 3        | Ports & Ranges        | Choose TCP/UDP ranges or combo (`T:1-100,U:53`) |
| 4        | Timing                | Set scan speed using `-T` flags                 |
| 5        | Host Discovery        | ICMP, TCP, and UDP pings                        |
| 6        | Toggle Flags          | IPv6, no DNS, show reason, etc.                 |
| 7        | NSE Scripting         | Select by category or script, with args         |
| 8        | Output Options        | Choose output formats or plain                  |
| 9        | Review & Run          | Shows final command and runs it                 |

---

## 🎯 NSE Power Mode

🧠 Advanced NSE Mode gives you full control.

- Select from **all installed NSE scripts**
- Searchable categories like `vuln`, `auth`, `malware`, `exploit`, etc.
- Combine multiple scripts and pass arguments like `http.useragent="Firefox"`

---

## 💡 Tips

- Scan faster? Use `-T4` or `-T5` for aggressive speed.
- Want stealth? Stick with `-sS` and `-T0`/`-T1`.
- Scan IPv6? Toggle `-6` and provide a valid IPv6 target.

---


## 📜 Disclaimer

<p>This tool is intended solely for <strong>educational purposes</strong> and <strong>authorized testing</strong>. Scanning without permission is both <strong>illegal</strong> and <strong>unethical</strong>.</p>
<p>Always make sure you have <strong>explicit authorization</strong> before testing any network or system. I am <strong>not liable</strong> for any damages or issues caused by the use of this tool.</p>
  

---


## ❤️ Support

<a href='https://ko-fi.com/J3J7WTYV7' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi3.png?v=6' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
<br>
<strong>Hack the world. Byte by Byte.</strong> ⛛
</p>

> “Because remembering 20 Nmap options is a crime. Make hacking fun again.”  
> – Me
