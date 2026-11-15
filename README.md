<h1 align="center">
  <img src="assets/figma-icon.svg" alt="Figma" width="38" valign="middle" />
  Figma Desktop for Linux
</h1>

<p align="center">
  <a href="https://github.com/simmmmm/figma-linux/releases/latest"><img src="https://img.shields.io/github/v/release/simmmmm/figma-linux?style=for-the-badge&label=Release&color=blue" alt="Release" /></a>
</p>

The real Figma Desktop app on Linux, not a browser wrapper. The official Windows installer, patched for Linux and packaged as an AppImage, .deb or .rpm.

Tray icon, `figma://` links, the MCP server, local fonts, offline files, X11 and Wayland.

A maintained fork of [IliyaBrook/figma-linux](https://github.com/IliyaBrook/figma-linux), which is archived.

## Install

Download the AppImage from [Releases](https://github.com/simmmmm/figma-linux/releases/latest), then:

```bash
chmod +x figma-desktop-*.AppImage
./figma-desktop-*.AppImage
```

On first launch it adds itself to your app menu and handles `figma://` links.

Update with [GearLever](https://flathub.org/apps/it.mijorus.gearlever) or `./figma-desktop-*.AppImage --update`.

## Titlebar

Figma's own tab bar is the titlebar by default. For the system titlebar:

```bash
./figma-desktop-*.AppImage --native-frame
```

Or right-click Figma in your app menu: **Figma (native titlebar)**.

## Build

```bash
git clone https://github.com/simmmmm/figma-linux.git
cd figma-linux
./build.sh                  # AppImage
./build.sh --build deb      # or rpm
```

## More

Fonts, Wayland/X11, renderer options, debugging, duplicate tabs, the MCP server and how the patching works: [docs/DETAILS.md](docs/DETAILS.md).

## License

Build tooling only. Figma Desktop is proprietary software owned by Figma, Inc. You need your own Figma account, and using it means you agree to [Figma's Terms of Service](https://www.figma.com/tos/).
