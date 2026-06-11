# Adder Cursor

An open-source dot-cursor theme, inspired by Adder Inds. Original "Google_Cursor" by ful1e5.

## Notes

-   All cursor's SVG files are found in [svg](./svg) directory, or you can also find them on
    [Figma](https://www.figma.com/file/i7nfGDWCTWlNJlnhmvHDfh/Adder-Cursor?node-id=0%3A1).

---

*todo: cursor preview goes here*
<!-- 
![AdderDot Blue](https://imgur.com/osnWiED.png)
![AdderDot Black](https://i.imgur.com/9ZlC1gD.png)
![AdderDot White](https://i.imgur.com/67KgJ3s.png)
![AdderDot Red](https://imgur.com/VtauWGC.png)
-->
<!-- CloudKiss SecretaryBlonde ElectricSheen LaurelLamina BarcalonaOxblood -->

## Cursor Sizes

### Xcursor Sizes:

<kbd>22</kbd>
<kbd>24</kbd>
<kbd>28</kbd>
<kbd>32</kbd>
<kbd>40</kbd>
<kbd>48</kbd>
<kbd>56</kbd>
<kbd>64</kbd>
<kbd>72</kbd>
<kbd>80</kbd>
<kbd>88</kbd>
<kbd>96</kbd>

### Windows Cursor Size:

-   <kbd>16x16</kbd> - Small
-   <kbd>24x24</kbd> - Regular
-   <kbd>32x32</kbd> - Large
-   <kbd>48x48</kbd> - Extra Large

## Colors:

### Cloudkiss

-   Base Color - `#1ACCD9` (Electric blue)
-   Outline Color - `#FFFFFF` (White)

### Secretary Blonde

-   Base Color - `#F9FC94` (Bright yellow)
-   Outline Color - `#051D2B` (Deep blue)

### Electric Sheen

-   Base Color - `#99D5FF` (Navy Blue)
-   Outline Color - `#1E304C` (Light pastel blue)

### Laurel Lamina

-   Base Color - `#092120` (Deep Green)
-   Outline Color - `#7DB38F` (Light pastel green)

### Barcalona Oxblood

-   Base Color - `#4C1E38` (Deep reddish purple)
-   Outline Color - `#CFD7E6` (Light grey)


## How to get it

### Easiest Way

You can download latest `stable` & `development` releases from the [Release Page](https://github.com/fsubmersible-technologies/Adder_Cursor/releases).

### Packages

Haha, I mean, if *you* wanna package it, go for it. We'll make an AUR package at some point, but we ain't gonna maintain it for much else.

## Installing Adder Cursor

#### Linux/X11

**Installation:**

```bash
tar -xvf AdderDot-VenomousBlue.tar.gz                # extract `AdderDot-VenomousBlue.tar.gz`
mv AdderDot-* ~/.icons/                      # Install to local users
sudo mv AdderDot-* /usr/share/icons/         # Install to all users
```

**Uninstallation:**

```bash
rm ~/.icons/AdderDot-*                       # Remove from local users
sudo rm /usr/share/icons/AdderDot-*          # Remove from all users
```

#### Windows

**Installation:**

1. Unzip `.zip` file
2. Open unziped directory in Explorer, and **right click** on `install.inf`.
3. Click 'Install' from the context menu, and authorize the modifications to your system.
4. Open Control Panel > Personalization and Appearance > Change mouse pointers,
   and select **Adder Cursors**.
5. Click '**Apply**'.

**Uninstallation:**

Run the `uninstall.bat` script packed with the `.zip` archive

**OR** follow these steps:

1. Go to **Registry Editor** by typing the same in the _start search box_.
2. Expand `HKEY_CURRENT_USER` folder and expand `Control Panel` folder.
3. Go to `Cursors` folder and click on `Schemes` folder - all the available custom cursors that are
   installed will be listed here.
4. **Right Click** on the name of cursor file you want to uninstall; for eg.: _Adder Cursors_ and
   click `Delete`.
5. Click '**yes**' when prompted.

## Build From Source

#### Notes

-   Adder Cursor build configuration and cursor hotspot settings are bundled in the `build.toml` file.
-   Check out the scripts section in [package.json](./package.json) to see how we build the cursor theme,
    excluding the render scripts. They are useful for converting `.svg` files to `.png` files.
-   yarn is optional, For building XCursors and Windows cursors from `.png` files or resizing them
    you don't need that. If you want to develop/modify Adder Cursor's colors, and bitmaps, or generate a png
    file from a svg, Then you can use yarn because bitmapper is written in TypeScript.
-   Since Adder Cursor variants are designed similarly, they share the same hotspot settings so a
    single configuration file `build.toml` is responsible for building all variants. Due to this, you will have
    to change the following options in `ctgen` to build the appropriate variant:
    -   **-d**: bitmaps directory
    -   **-n**: The name you want to give to the generated theme.
    -   **-c**: Theme comment.
    -   See `ctgen --help` for all available options.

### Build prerequisites

-   Python version 3.7 or higher
-   [clickgen](https://github.com/ful1e5/clickgen)>=2.1.2 (`pip install clickgen`)
-   [yarn](https://github.com/yarnpkg/yarn)

### Quick start

1. Install [build prerequisites](#build-prerequisites) on your system
2. `git clone https://github.com/submersible-technologies/Adder_Cursor`
3. `cd Adder_Cursor && yarn build`
4. See [Installing Adder Cursor](#installing-adder-cursor).

### Building

> **Note**
> Bitmaps are already generated in the `bitmaps` directory and **managed by the maintainer**
> (do not edit them directly).

First make sure you installed the [build prerequisites](#build-prerequisites).
Now that you have the dependencies, you can try build individual themes from bitmaps and
customize sizes, target platform, and etc. with the `ctgen` CLI (packed with `clickgen`).

#### `yarn build` aberration

Here are the default commands we used to build the Adder Cursor's variants and packed them into `yarn build`:

```bash
    ctgen build.toml -d 'bitmaps/AdderDot-CloudKiss' -n 'AdderDot-CloudKiss' -c 'Cerulian → White dot cursor, inspired by Adder Inds.'
    ctgen build.toml -d 'bitmaps/AdderDot-SecretaryBlonde' -n 'AdderDot-SecretaryBlonde' -c 'Pale Blonde → Deep Blue-Green dot cursor, inspired by Adder Inds.'
    ctgen build.toml -d 'bitmaps/AdderDot-ElectricSheen' -n 'AdderDot-ElectricSheen' -c 'Azure Lake → Deep Sea Blue dot cursor, inspired by Adder Inds.'
    ctgen build.toml -d 'bitmaps/AdderDot-LaurelLamina' -n 'AdderDot-LaurelLamina' -c 'Deep Emerald → Laurel Green dot cursor, inspired by Adder Inds.'
    ctgen build.toml -d 'bitmaps/AdderDot-BarcalonaOxblood' -n 'AdderDot-BarcalonaOxblood' -c 'Oxblood → Tearsoaked White dot cursor, inspired by Adder Inds.'
```

Afterwards, the themes can be found in the `themes` directory.

#### Customize Sizes

> **Note**
> You can change the cursor size up to 200 because pngs are rendered with 200x200.
> If the cursor is resized by more than rendered png size, the final cursor will be blurred.

##### Customize Windows Cursor size

To build Windows cursor with size `16`:

> **Warning**
> Windows cursor supports only one size, if multiple sizes are given with `-s` the first size will
> be considered in build.

```bash
ctgen build.toml -d 'bitmaps/AdderDot-CloudKiss' -n 'AdderDot-CloudKiss' -c 'Cerulian → White dot cursor, inspired by Adder Inds.'
```

You can also customize output directory with `-o` option:

```bash
ctgen build.toml -s 16 -p windows -d 'bitmaps/AdderDot-CloudKiss'-o 'out' -n 'AdderDot-CloudKiss' -c 'Cerulian → White dot cursor, inspired by Adder Inds.'
```

##### Customize XCursor size

To build XCursor with size `16`:

```bash
ctgen build.toml -s 16 -p x11 -d 'bitmaps/AdderDot-CloudKiss' -n 'AdderDot-CloudKiss' -c 'Cerulian → White dot cursor, inspired by Adder Inds.'
```

You can also assign multiple sizes to `ctgen` for XCursors build:

```bash
ctgen build.toml -s 16 24 32 -p x11 -d 'bitmaps/AdderDot-CloudKiss' -n 'AdderDot-CloudKiss' -c 'Cerulian → White dot cursor, inspired by Adder Inds.'
```

#### Customize Colors

To customize Adder Cursor's color you have to install node dependencies with `yarn install` command.
After installing dependencies you can customize the colors via `npx cbmp` Node CLI App which packed with
[cbmp](https://github.com/ful1e5/cbmp) node package.

##### `yarn render` aberration

Here are the default commands we used for generating the Adder Cursor's bitmaps and packed them into `yarn render`:

```bash
    npx cbmp -d 'svg' -n 'AdderDot-CloudKiss' -bc '#1ACCD9' -oc '#FFFFFF'
    npx cbmp -d 'svg' -n 'AdderDot-SecretaryBlonde' -bc '#F9FC94' -oc '#051D2B'
    npx cbmp -d 'svg' -n 'AdderDot-ElectricSheen' -bc '#99D5FF' -oc '#1E304C'
    npx cbmp -d 'svg' -n 'AdderDot-LaurelLamina' -bc '#092120' -oc '#7DB38F'
    npx cbmp -d 'svg' -n 'AdderDot-BarcalonaOxblood' -bc '#4C1E38' -oc '#CFD7E6'
```

#### Examples

Lets generate modern AdderDot with green base color and black outline:

```bash
npx cbmp -d 'svg' -n 'AdderDot-Hacker' -bc '#00FE00' -oc '#000000'
```
<!-- 29-d14: damn! this would've been way easier than cloning the entire repo -->

After rendering custom color you have to build cursor through `ctgen`:

```bash
ctgen build.toml -d 'bitmaps/AdderDot-Hacker' -n 'AdderDot-Hacker' -c 'Green and black Adder dot cursors.'
```

Afterwards, Generated theme can be found in the `themes` directory.

###### AdderDot Gruvbox

```bash
npx cbmp -d 'svg' -n 'AdderDot-Gruvbox' -bc '#282828' -oc '#EBDBB2'
ctgen build.toml -d 'bitmaps/AdderDot-Gruvbox' -n 'AdderDot-Gruvbox' -c 'Groovy Adder dot cursors.'
``` <!-- 29-d14: oh, shit, I get the joke now. I've been saying it like "gr-uhhv" -->

###### AdderDot Solarized Dark

```bash
npx cbmp -d 'svg' -n 'AdderDot-Solarized-Dark' -bc '#002b36' -oc '#839496'
ctgen build.toml -d 'bitmaps/AdderDot-Solarized-Dark' -n 'AdderDot-Solarized-Dark' -c 'Solarized Dark Adder dot cursors.'
```

###### AdderDot Solarized Light

```bash
npx cbmp -d 'svg' -n 'AdderDot-Solarized-Light' -bc '#839496' -oc '#002b36'
ctgen build.toml -d 'bitmaps/AdderDot-Solarized-Light' -n 'AdderDot-Solarized-Light' -c 'Solarized Light Adder dot cursors.
```

###### AdderDot Dracula

```bash
npx cbmp -d 'svg' -n 'AdderDot-Dracula' -bc '#282a36' -oc '#f8f8f2'
ctgen build.toml -d 'bitmaps/AdderDot-Dracula' -n 'AdderDot-Dracula' -c 'Dracula Adder dot cursors.'
```

# Bugs

Bugs should be reported [here](https://github.com/submersible-technologies/Adder_Cursor/issues) on the Github issues page.

# Getting Help

You create an issue, we'll help you. Security Drone 29-d14, at your service!

# Contributing

Check [CONTRIBUTING.md](CONTRIBUTING.md), any suggestions for features and contributions to the continuing code masterelopment can be made via the issue tracker or code contributions via a `Fork` & `Pull requests`.

# What the hell even is 'Adder Industries', anyway?

I don't think I can discuss that here. If you can find us, you'll fit right in 😉
