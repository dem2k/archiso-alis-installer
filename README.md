# Custom Arch ISO Builder

This project helps you create your own customized Arch Linux ISO with preconfigured files and scripts.

> 💡 I used [alis](https://picodotdev.github.io/alis/) as the basis for automated Arch installation in this project.

## How to Build Your Custom Arch ISO

### 1. Clone or download this repository.

```bash
git clone https://github.com/dem2k/archiso-alis-installer.git
cd archiso-alis-installer
```

You also need `archiso` package.

``` bash
sudo pacman -S --needed archiso
```

### 2. Customize

Edit the contents of the `src/` directory to your needs.
Everything in this folder will be included in the final ISO image.

### 3. Prepare the Build Environment

Run the setup script once:

```bash
./copy-archiso-releng.sh
```

### 4. Build the ISO

Use root privileges to build the ISO:

```bash
sudo ./build-iso.sh
```

The custom ISO will be created in the `out/` directory.

### 5. Boot and Install

- Boot from the generated ISO.
- Run the installation script:

```bash
./alis.sh
```

### 6. Reboot and Enjoy

After installation, reboot into your new Arch system. 🚀

---

## 🧩 Requirements

- Arch Linux (or an Arch-based distro)
- Root access for ISO building

## 📄 License

This project is licensed under the **GNU General Public License v3.0**.
See the [LICENSE](./LICENSE) file for details.

---

*Happy hacking!*

