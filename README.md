<div align="center">

<img src="https://raw.githubusercontent.com/winsdevcltr09/autoInstall-premium/main/assets/banner.png" alt="DevCulture XII Store" width="100%" />

<br/>

<img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=24&duration=2800&pause=1000&color=9B59B6&center=true&vCenter=true&width=680&height=55&lines=DevCulture+XII+Store+%E2%80%94+VPN+Premium;SSH+%7C+VMess+%7C+VLESS+%7C+Trojan+%7C+OpenVPN;Premium+Script+%7C+Multi+Protocol+%7C+Full+Managed" alt="Typing" />

<img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=12&duration=3500&pause=900&color=6C3483&center=true&vCenter=true&width=580&lines=Initializing+encrypted+tunnel...;Loading+protocol+modules...;All+systems+operational.+Welcome%2C+Operator." alt="Subtitle" />

<br/>

![Stars](https://img.shields.io/github/stars/winsdevcltr09/vpnscript-premium?style=for-the-badge&logo=github&color=9B59B6&labelColor=0D0D0D&logoColor=white)
![Forks](https://img.shields.io/github/forks/winsdevcltr09/vpnscript-premium?style=for-the-badge&logo=github&color=7D3C98&labelColor=0D0D0D&logoColor=white)
![Last Commit](https://img.shields.io/github/last-commit/winsdevcltr09/vpnscript-premium?style=for-the-badge&logo=git&color=6C3483&labelColor=0D0D0D&logoColor=white)
![Repo Size](https://img.shields.io/github/repo-size/winsdevcltr09/vpnscript-premium?style=for-the-badge&logo=files&color=8E44AD&labelColor=0D0D0D&logoColor=white)

![Version](https://img.shields.io/badge/VERSION-3.2_PREMIUM-9B59B6?style=flat-square&logo=github&logoColor=white&labelColor=0D0D0D)
![Ubuntu](https://img.shields.io/badge/Ubuntu-20.04_%7C_22.04_%7C_24.04-7D3C98?style=flat-square&logo=ubuntu&logoColor=white&labelColor=0D0D0D)
![Debian](https://img.shields.io/badge/Debian-10_%7C_11_%7C_12-6C3483?style=flat-square&logo=debian&logoColor=white&labelColor=0D0D0D)
![Shell](https://img.shields.io/badge/Shell-Bash-8E44AD?style=flat-square&logo=gnubash&logoColor=white&labelColor=0D0D0D)
![Arch](https://img.shields.io/badge/Arch-x86__64-9B59B6?style=flat-square&logo=linux&logoColor=white&labelColor=0D0D0D)
<img src="https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/assets/online.svg" width="14" height="14" /> <img src="https://img.shields.io/badge/Status-ONLINE-27AE60?style=flat-square&labelColor=0D0D0D" />

</div>

<br/>

---

## Daftar Isi

- [Persiapan Server](#-persiapan-server)
- [Instalasi](#-instalasi)
- [Update](#-update)
- [Protokol](#-protokol-yang-tersedia)
- [Fitur Manajemen](#-fitur-manajemen)
- [Sistem yang Didukung](#-sistem-yang-didukung)
- [Panduan Lengkap](#-panduan-instalasi-lengkap)
- [Kontak](#-kontak--support)

---

## Persiapan Server

> Wajib dijalankan sebelum instalasi. Memperbarui seluruh paket sistem.

```bash
apt update -y && apt upgrade -y
```

> [!WARNING]
> Pastikan server menggunakan arsitektur **x86_64** dan OS **Ubuntu** atau **Debian**. Script tidak mendukung arsitektur ARM atau OpenVZ.

---

## Instalasi

> Setelah server siap, jalankan perintah berikut sebagai **root**:

```bash
apt update -y && apt upgrade -y && wget -q https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/premi.sh && chmod +x premi.sh && ./premi.sh
```

<details>
<summary><b>Penjelasan detail perintah instalasi</b></summary>

<br/>

| Perintah | Fungsi |
|:---|:---|
| `apt update -y && apt upgrade -y` | Memperbarui seluruh paket sistem |
| `wget -q <url>` | Mengunduh file `premi.sh` dari GitHub secara diam-diam |
| `chmod +x premi.sh` | Memberikan izin eksekusi pada file installer |
| `./premi.sh` | Menjalankan installer utama |

> Script akan otomatis **mendeteksi OS**, mengecek IP address, menginstall semua dependensi, mengkonfigurasi domain, SSL, dan seluruh protokol VPN.

</details>

---

## Update

> Jalankan perintah berikut untuk memperbarui script ke versi terbaru:

```bash
wget -q https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/update.sh && chmod +x update.sh && ./update.sh
```

<details>
<summary><b>Penjelasan detail perintah update</b></summary>

<br/>

| Perintah | Fungsi |
|:---|:---|
| `wget -q <url>` | Mengunduh file `update.sh` dari GitHub |
| `chmod +x update.sh` | Memberikan izin eksekusi pada file update |
| `./update.sh` | Menjalankan proses update otomatis |

> Script update akan memperbarui seluruh file menu, konfigurasi, dan komponen pendukung secara otomatis tanpa menghapus data akun yang sudah ada.

</details>

---

## Protokol yang Tersedia

<div align="center">

| # | Protokol | Mode | Port | Enkripsi |
|:---:|:---|:---:|:---:|:---:|
| 01 | SSH WebSocket | TLS | 443 | SSL/TLS |
| 02 | SSH WebSocket | Non-TLS | 80 | Plain |
| 03 | SSH Slow DNS | Multipath | DNS | Tunnel |
| 04 | SSH UDP Custom | Multipath | Custom | Tunnel |
| 05 | Xray VMess WebSocket | TLS / Non-TLS | 443 / 80 | AES-128-GCM |
| 06 | Xray VLESS WebSocket | TLS / Non-TLS | 443 / 80 | XTLS / None |
| 07 | Xray Trojan WebSocket | TLS / Non-TLS | 443 / 80 | TLS |
| 08 | OpenVPN | TCP / UDP | 1194 | AES-256-CBC |
| 09 | HaProxy | TCP Proxy | 443 | Passthrough |
| 10 | UDP Mini (BadVPN) | UDP | Custom | Tunnel |

</div>

---

## Fitur Manajemen

<div align="center">

| Kategori | Fitur |
|:---:|:---|
| **Akun** | Tambah, hapus, perpanjang masa aktif akun SSH / VMess / VLESS / Trojan |
| **Monitoring** | Cek status akun, expired date, login aktif, dan penggunaan per user |
| **Jaringan** | Monitor trafik real-time, limit kecepatan & kuota per user |
| **IP Limit** | Batasi jumlah perangkat yang dapat login bersamaan per akun |
| **SSL Otomatis** | Generate & renew sertifikat SSL via Let's Encrypt (`acme.sh`) |
| **Domain** | Setup domain sendiri atau domain script via Cloudflare |
| **Backup** | Backup dan restore konfigurasi otomatis ke GitHub |
| **Bot Telegram** | Notifikasi otomatis & manajemen akun via Telegram Bot |
| **Sistem** | Restart layanan, clear log, auto reboot terjadwal, monitor RAM & CPU |
| **Panel** | Akses menu utama lengkap via perintah `menu` |

</div>

---

## Sistem yang Didukung

<div align="center">

| Sistem Operasi | Versi | Keterangan |
|:---:|:---:|:---|
| **Ubuntu** | 20.04 LTS | Direkomendasikan — paling stabil |
| **Ubuntu** | 22.04 LTS | Didukung penuh |
| **Ubuntu** | 24.04 LTS | Didukung penuh |
| **Debian** | 10 (Buster) | Didukung penuh |
| **Debian** | 11 (Bullseye) | Didukung penuh |
| **Debian** | 12 (Bookworm) | Didukung penuh |

> [!NOTE]
> Hanya mendukung arsitektur **x86_64**. VPS berbasis **OpenVZ** tidak didukung. Gunakan KVM atau LXC.

</div>

---

## Panduan Instalasi Lengkap

### 1 — Perbarui dan Siapkan Server

Login sebagai **root**, lalu jalankan:

```bash
apt update -y && apt upgrade -y
```

### 2 — Jalankan Installer

```bash
apt update -y && apt upgrade -y && wget -q https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/premi.sh && chmod +x premi.sh && ./premi.sh
```

### 3 — Ikuti Panduan di Layar

Installer akan meminta:

- **Domain / subdomain** — untuk sertifikat SSL otomatis via Let's Encrypt
- **Jenis domain** — domain sendiri atau domain script
- Semua protokol akan dikonfigurasi secara otomatis

### 4 — Akses Menu Utama

Setelah instalasi selesai, ketik:

```bash
menu
```

### 5 — Update Script

Untuk memperbarui script ke versi terbaru:

```bash
wget -q https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/update.sh && chmod +x update.sh && ./update.sh
```

---

## Kontak & Support

<div align="center">

<br/>

[![Telegram](https://img.shields.io/badge/Telegram-@dcxii-9B59B6?style=for-the-badge&logo=telegram&logoColor=white&labelColor=0D0D0D)](https://t.me/dcxii09)

<br/><br/>

<img src="https://readme-typing-svg.demolab.com?font=Share+Tech+Mono&size=12&duration=4000&pause=1000&color=5B2C6F&center=true&vCenter=true&width=560&lines=Script+by+DevCulture+XII+Store;Dilarang+mendistribusikan+ulang+tanpa+izin.;Copyright+2024+DevCulture+XII+Store.+All+rights+reserved." alt="Footer" />

<br/>

<sub>
<img src="https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/assets/online.svg" width="10" height="10" /> <code>SYSTEM ONLINE</code>
&nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/assets/online.svg" width="10" height="10" /> <code>ALL PROTOCOLS ACTIVE</code>
&nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/winsdevcltr09/vpnscript-premium/main/assets/online.svg" width="10" height="10" /> <code>ENCRYPTION ENABLED</code>
</sub>

</div>
