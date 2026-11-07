<div align="center">

# Lumen

**A friendly, request-first front end for [SeerrNG](https://github.com/snapetech-org/seerrng).**
Your family finds something, taps **Request**, and it shows up in Plex, Jellyfin or Emby.

[See it](#see-it) · [Why Lumen](#why-lumen) · [Install](#install) · [Settings](#settings-for-everyone-optional) · [Updating](#updating) · [Help](#troubleshooting)

<table>
<tr>
<td align="center" width="70%"><b>Desktop</b><br><br><img src="media/lumen-desktop.gif" alt="Lumen on a desktop: Discover, a request with server and folder choice, search, a movie, seasons, books and requests" width="100%"></td>
<td align="center" width="30%"><b>Phone</b><br><br><img src="media/lumen-phone.gif" alt="Lumen on a phone: Discover, a series with seasons, search and settings" width="100%"></td>
</tr>
</table>

</div>

---

Lumen is part of SeerrNG: it was merged into [snapetech-org/seerrng](https://github.com/snapetech-org/seerrng/tree/main/lumen) and is built from there. This page shows what it looks like and walks you through installing it, step by step. The code is in [`lumen/`](lumen) here, kept identical to SeerrNG's `main` by an automatic sync ([`UPSTREAM`](UPSTREAM) names the commit), but **always install from SeerrNG** (the commands below do that). Testing Lumen or sending a change? See [CONTRIBUTING.md](CONTRIBUTING.md).

## See it

Screenshots follow GitHub's theme: switch GitHub between light and dark to see Lumen's two themes. Lumen also has a **Device** setting that follows the phone or computer.

### Discover

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="media/desktop/discover-dark.png">
  <img src="media/desktop/discover-light.png" alt="Discover page" width="100%">
</picture>

### Movies and series, with what's already on your server marked

| | |
|---|---|
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/movies-dark.png"><img src="media/desktop/movies-light.png" alt="Movies"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/series-dark.png"><img src="media/desktop/series-light.png" alt="Series"></picture> |
| **Movies.** Filter by genre, sort, or show only what's on your server. Hover a poster to request it. | **Series.** Request the whole show or pick seasons. |
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/movie-dark.png"><img src="media/desktop/movie-light.png" alt="A movie page"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/series-detail-dark.png"><img src="media/desktop/series-detail-light.png" alt="A series page"></picture> |
| **Title pages.** One big Request button, trailer, cast and details. | **Season picker.** Entire series, latest season only, or tick the ones you want. |
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/search-dark.png"><img src="media/desktop/search-light.png" alt="Search"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/requests-dark.png"><img src="media/desktop/requests-light.png" alt="Requests"></picture> |
| **Search** across movies, series and books, or just the section you came from. | **Requests.** Everything you've asked for, and what's ready to watch. |
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/soon-dark.png"><img src="media/desktop/soon-light.png" alt="Coming soon"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/request-sheet-dark.png"><img src="media/desktop/request-sheet-light.png" alt="Request options"></picture> |
| **Coming soon.** Request ahead and it downloads the day it's out. | **Admins choose the server, quality and folder** when they request from a poster. Everyone else gets one-click requests. |

### Books, music, comics, magazines and games

These appear only when your SeerrNG has a service connected for them.

| | |
|---|---|
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/books-dark.png"><img src="media/desktop/books-light.png" alt="Books"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/music-dark.png"><img src="media/desktop/music-light.png" alt="Music"></picture> |
| **Books and audiobooks**, with a narrator picker for audiobooks. | **Music**: albums, EPs and singles. |
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/games-dark.png"><img src="media/desktop/games-light.png" alt="Games"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/comics-dark.png"><img src="media/desktop/comics-light.png" alt="Comics"></picture> |
| **Games** for PC, retro and modern consoles. | **Comics** and **magazines**: follow a series and new issues arrive on their own. |

### On a phone

Lumen is built for phones first, with a bottom tab bar, big tap targets and a + on every poster. It works in any phone browser, can be added to the home screen, and also works inside the SeerrNG Android app.

<table>
<tr>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/discover-dark.png"><img src="media/phone/discover-light.png" alt="Phone: Discover"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/movie-dark.png"><img src="media/phone/movie-light.png" alt="Phone: a movie"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/series-detail-dark.png"><img src="media/phone/series-detail-light.png" alt="Phone: seasons"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/request-sheet-dark.png"><img src="media/phone/request-sheet-light.png" alt="Phone: request options"></picture></td>
</tr>
<tr>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/search-dark.png"><img src="media/phone/search-light.png" alt="Phone: search"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/requests-dark.png"><img src="media/phone/requests-light.png" alt="Phone: requests"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/books-dark.png"><img src="media/phone/books-light.png" alt="Phone: books"></picture></td>
<td><picture><source media="(prefers-color-scheme: dark)" srcset="media/phone/you-dark.png"><img src="media/phone/you-light.png" alt="Phone: your settings"></picture></td>
</tr>
</table>

### Settings

| | |
|---|---|
| <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/you-dark.png"><img src="media/desktop/you-light.png" alt="You page"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="media/desktop/admin-dark.png"><img src="media/desktop/admin-light.png" alt="Admin settings"></picture> |
| **You.** Each person sees their request limits and picks their theme, rows and request style. | **Lumen settings for everyone** (admins). Set defaults, lock them, add your logo, then download the config file. |

## Why Lumen

SeerrNG is powerful, and that power shows: settings, issues, users and many options everywhere. Most people in your house only want to find something and ask for it. Lumen gives them exactly that.

- **Simple for everyone.** Discover, Movies, Series, Search, Requests and You. No admin screens, nothing to break.
- **Great on phones.** A bottom tab bar, a + on every poster, a sheet for choosing seasons, and Back that does what you expect.
- **Knows what you already have.** A green check on everything already on your server, and a filter to show only what's there (or only what isn't).
- **One-click requests**, or a season picker for series. Admins and request managers can choose the server, quality and folder.
- **Plex, Jellyfin and Emby.** Lumen follows the media server SeerrNG uses and names it everywhere. For Jellyfin and Emby there's a **plain sign-in page** with just username and password, so family members don't need to know what Jellyfin is.
- **Your name and logo.** Replace the name, logo and browser tab icon.
- **Light, dark or Device** theme, chosen by each person.
- **More than movies and TV.** Books and audiobooks (with narrator choice), music, comics, magazines, games and sports, each shown only when your server is set up for it.
- **Each person picks how it works:** Discover rows, quick request, whole-series requests, narrator choice and books on or off. Admins set the defaults and can lock any of them.
- **Safe to try.** Lumen has no database and changes nothing in SeerrNG. Run it next to SeerrNG for as long as you like, and remove it any time: SeerrNG carries on exactly as before.
- **Same accounts, same rules.** People sign in with the account they already use. Permissions, approvals and request limits all still come from SeerrNG.

```text
 family (browser / phone) ──► Lumen  :5080 ──► SeerrNG :5055 ──► Plex / Jellyfin / Emby, Sonarr, Radarr…
 you, the admin ────────────────────────────► SeerrNG :5055   (setup and settings, as today)
```

## Install

You'll need about 15 minutes. **Open the sections that match your setup**. Each one shows only the steps for that choice.

> **Already comfortable with Docker?** Add this to your compose file next to SeerrNG, run `docker compose up -d`, then turn on **Trust Reverse Proxy** in SeerrNG (Settings → Network) and restart it:
>
> ```yaml
>   lumen:
>     build: https://github.com/snapetech-org/seerrng.git#main:lumen
>     image: seerrng-lumen:local
>     container_name: lumen
>     environment:
>       SEERR_URL: http://seerrng:5055           # how Lumen talks to SeerrNG behind the scenes
>       SEERR_FULL_URL: http://192.168.1.50:5055 # the address you'd type in your browser to open full SeerrNG
>       LUMEN_TRUSTED_PROXIES: ''                # your reverse proxy's IP/subnet, if any
>       LUMEN_REAL_IP_HEADER: X-Forwarded-For    # CF-Connecting-IP for Cloudflare Tunnel
>     ports: [5080:80]
>     restart: unless-stopped
> ```

There is no prebuilt Lumen image yet. Docker builds it from SeerrNG's code the first time it starts, which takes a few minutes. After that, starting is instant.

### Step 1: Pick your system

Open your system, then choose **New install** if you don't have SeerrNG yet, or **SeerrNG already running** to add Lumen next to the one you have. Adding Lumen leaves your SeerrNG and its settings as they are, apart from one switch in Step 3.

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/linux/eee"><img src="https://cdn.simpleicons.org/linux/333" width="14"></picture> <b>Linux</b> (Ubuntu, Debian, Fedora, Raspberry Pi OS…)</summary>

<br>

**Get Docker.** Install [Docker Engine](https://docs.docker.com/engine/install/) and the Compose plugin (`docker-compose-plugin`). Check it's ready:

```sh
docker compose version
```

<blockquote>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/linux/eee"><img src="https://cdn.simpleicons.org/linux/333" width="14"></picture> <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

```sh
mkdir ~/seerrng && cd ~/seerrng
curl -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.yaml
mkdir seerrng-config
sudo chown 1000:1000 seerrng-config   # SeerrNG runs as user 1000
nano compose.yaml                     # set TZ and SEERR_FULL_URL, then Ctrl+O, Enter, Ctrl+X
docker compose up -d
docker compose ps                     # both seerrng and lumen should say "running"
```

Then open `http://<this-machine>:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)). Lumen is at `http://<this-machine>:5080`.

</details>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/linux/eee"><img src="https://cdn.simpleicons.org/linux/333" width="14"></picture> <b>SeerrNG already running</b>: add Lumen</summary>

<br>

**If SeerrNG is in a compose file,** add the `lumen` block from the quick start above under `services:`, lined up with `seerrng:`, then run `docker compose up -d` in that folder.

**Otherwise,** give Lumen its own folder:

```sh
mkdir ~/lumen && cd ~/lumen
curl -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.lumen-only.yaml
nano compose.yaml   # set SEERR_URL and SEERR_FULL_URL
docker compose up -d
```

Open `http://<this-machine>:5080`.

</details>

</blockquote>

</details>

<details>
<summary>🪟 <b>Windows</b> (Docker Desktop)</summary>

<br>

**Get Docker.** Install [Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install/) and start it (whale icon in the tray). Open **PowerShell** and check:

```powershell
docker compose version
```

<blockquote>

<details>
<summary>🪟 <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

```powershell
mkdir $HOME\seerrng; cd $HOME\seerrng
curl.exe -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.yaml
mkdir seerrng-config
notepad compose.yaml     # set TZ and SEERR_FULL_URL, save, close
docker compose up -d
docker compose ps
```

For `SEERR_FULL_URL`, use your PC's IP (run `ipconfig`, look for **IPv4 Address**), for example `http://192.168.1.50:5055`. Then open `http://localhost:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)).

</details>

<details>
<summary>🪟 <b>SeerrNG already running</b>: add Lumen</summary>

<br>

```powershell
mkdir $HOME\lumen; cd $HOME\lumen
curl.exe -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.lumen-only.yaml
notepad compose.yaml     # set SEERR_URL and SEERR_FULL_URL
docker compose up -d
```

SeerrNG installed directly on Windows (not in Docker)? Use `SEERR_URL: http://host.docker.internal:5055`.

</details>

</blockquote>

Open Lumen at `http://localhost:5080` on the PC, or `http://<PC's IP>:5080` from a phone. If phones can't connect, allow port 5080 through Windows Firewall when prompted.

</details>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/apple/eee"><img src="https://cdn.simpleicons.org/apple/333" width="14"></picture> <b>macOS</b> (Docker Desktop)</summary>

<br>

**Get Docker.** Install [Docker Desktop for Mac](https://docs.docker.com/desktop/setup/install/mac-install/) and start it. Open **Terminal** and check:

```sh
docker compose version
```

<blockquote>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/apple/eee"><img src="https://cdn.simpleicons.org/apple/333" width="14"></picture> <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

```sh
mkdir ~/seerrng && cd ~/seerrng
curl -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.yaml
mkdir seerrng-config
open -e compose.yaml     # set TZ and SEERR_FULL_URL, save
docker compose up -d
docker compose ps
```

Then open `http://localhost:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)).

</details>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/apple/eee"><img src="https://cdn.simpleicons.org/apple/333" width="14"></picture> <b>SeerrNG already running</b>: add Lumen</summary>

<br>

```sh
mkdir ~/lumen && cd ~/lumen
curl -o compose.yaml https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.lumen-only.yaml
open -e compose.yaml     # set SEERR_URL and SEERR_FULL_URL
docker compose up -d
```

</details>

</blockquote>

Open Lumen at `http://localhost:5080`, or `http://<Mac's IP>:5080` from a phone (System Settings → Wi-Fi → Details shows the IP).

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>Unraid</b></summary>

<br>

Each choice below has two routes:

- **With [Compose Manager Plus](https://ca.unraid.net/apps/compose-manager-plus-0wft8je0ra0zhy)** ([GitHub](https://github.com/mstrhakr/compose_plugin)), the easy route: paste one block of text and press a button. Install it from the **Apps** tab. It replaces the older *Compose Manager* plugin (remove that first) and keeps any stacks you already have.
- **Without Compose**: build the image once in the terminal and use **Add Container**.

<blockquote>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>SeerrNG already running</b>: add Lumen (the usual case)</summary>

<br>

<blockquote>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>With Compose Manager Plus</b> (easy route, recommended)</summary>

<br>

1. **Docker** tab → **Compose** section → **Add Stack** → name it `lumen` → **OK**. The editor opens.
2. On the **Compose** tab, paste this and change both IP addresses to your Unraid server's IP. Press **Ctrl+S** to save.

   ```yaml
   services:
     lumen:
       build: https://github.com/snapetech-org/seerrng.git#main:lumen
       image: seerrng-lumen:local
       container_name: lumen
       environment:
         SEERR_URL: http://192.168.1.50:5055        # how Lumen talks to SeerrNG behind the scenes: your Unraid IP + SeerrNG's port
         SEERR_FULL_URL: http://192.168.1.50:5055   # the address you'd type in your browser to open full SeerrNG (or your SeerrNG domain)
         LUMEN_TRUSTED_PROXIES: ''                  # filled in at Step 2 if you use a reverse proxy or tunnel
         LUMEN_REAL_IP_HEADER: X-Forwarded-For
       ports:
         - 5080:80
       cap_drop: [ALL]
       security_opt: [no-new-privileges:true]
       # Optional: your settings file and logo. See "Settings for everyone" further down; leave these
       # lines as they are until you've downloaded lumen-config.json. (":ro" means read-only; it isn't
       # part of the file name.)
       # volumes:
       #   - /mnt/user/appdata/lumen/lumen-config.json:/usr/share/nginx/html/lumen-config.json:ro
       #   - /mnt/user/appdata/lumen/branding:/usr/share/nginx/html/branding:ro
       restart: unless-stopped
   ```

3. Press **Compose Up**. The first start builds Lumen, which takes a few minutes; you can close the window while it runs.
4. Open `http://<Unraid IP>:5080`.

If SeerrNG and your reverse proxy sit on a custom Docker network (for example `proxynet`), you can add Lumen to it with `networks: [proxynet]` plus a top-level `networks: { proxynet: { external: true } }`, and use `SEERR_URL: http://seerrng:5055`.

**Updating:** rebuild Lumen in **Terminal**, then press **Compose Up** on the stack again:

```sh
docker build --pull -t seerrng-lumen:local https://github.com/snapetech-org/seerrng.git#main:lumen
```

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>Without Compose</b> (Add Container)</summary>

<br>

1. Open **Terminal** (top right `>_`) and build the image once:

   ```sh
   docker build -t seerrng-lumen:local https://github.com/snapetech-org/seerrng.git#main:lumen
   ```

2. **Docker** tab → **Add Container**:
   - **Name:** `lumen`
   - **Repository:** `seerrng-lumen:local`
   - **Network Type:** `bridge` (or the custom network your reverse proxy uses)
   - **Add another Path, Port, Variable…** → **Port**: container `80`, host `5080`
   - **Variable** `SEERR_URL` = `http://<Unraid IP>:5055` (how Lumen talks to SeerrNG behind the scenes)
   - **Variable** `SEERR_FULL_URL` = `http://<Unraid IP>:5055`, or your SeerrNG domain (the address you'd type in your browser to open full SeerrNG)
   - **Variable** `LUMEN_TRUSTED_PROXIES` = leave empty for now (see Step 2)
3. **Apply**, then open `http://<Unraid IP>:5080`.

**Updating:** run the `docker build` line again and restart the container.

</details>

</blockquote>

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

<blockquote>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>With Compose Manager Plus</b> (easy route, recommended)</summary>

<br>

1. Open **Terminal** (`>_`, top right) and create SeerrNG's config folder:

   ```sh
   mkdir -p /mnt/user/appdata/seerrng && chown 1000:1000 /mnt/user/appdata/seerrng
   ```

2. **Docker** tab → **Compose** section → **Add Stack** → name it `seerrng` → **OK**.
3. On the **Compose** tab, paste this, set your time zone and Unraid IP, and press **Ctrl+S**:

   ```yaml
   services:
     seerrng:
       image: ghcr.io/snapetech-org/seerrng:latest
       container_name: seerrng
       environment:
         LOG_LEVEL: info
         PORT: 5055
         TZ: America/New_York                       # your time zone
       ports:
         - 5055:5055
       volumes:
         - /mnt/user/appdata/seerrng:/app/config
       restart: unless-stopped

     lumen:
       build: https://github.com/snapetech-org/seerrng.git#main:lumen
       image: seerrng-lumen:local
       container_name: lumen
       depends_on: [seerrng]
       environment:
         SEERR_URL: http://seerrng:5055             # how Lumen talks to SeerrNG behind the scenes (leave as is)
         SEERR_FULL_URL: http://192.168.1.50:5055   # the address you'd type in your browser to open full SeerrNG: your Unraid IP
         LUMEN_TRUSTED_PROXIES: ''
         LUMEN_REAL_IP_HEADER: X-Forwarded-For
       ports:
         - 5080:80
       cap_drop: [ALL]
       security_opt: [no-new-privileges:true]
       restart: unless-stopped
   ```

4. Press **Compose Up** (the first start takes a few minutes).
5. Open `http://<Unraid IP>:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)). Lumen is at `http://<Unraid IP>:5080`.

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>Without Compose</b> (Add Container)</summary>

<br>

1. Add SeerrNG: in **Terminal** run `mkdir -p /mnt/user/appdata/seerrng && chown 1000:1000 /mnt/user/appdata/seerrng`, then **Docker** tab → **Add Container**:
   - **Name:** `seerrng`, **Repository:** `ghcr.io/snapetech-org/seerrng:latest`
   - **Port**: container `5055`, host `5055`
   - **Path**: container `/app/config`, host `/mnt/user/appdata/seerrng`
   - **Variable** `TZ` = your time zone, e.g. `America/New_York`

   **Apply**, then open `http://<Unraid IP>:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)).
2. Add Lumen with the steps under **SeerrNG already running → Without Compose** above.

</details>

</blockquote>

</details>

</blockquote>

</details>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/synology/ddd"><img src="https://cdn.simpleicons.org/synology/555" width="14"></picture> <b>Synology</b> (Container Manager)</summary>

<br>

**Get Docker.** **Package Center** → install **Container Manager**.

<blockquote>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/synology/ddd"><img src="https://cdn.simpleicons.org/synology/555" width="14"></picture> <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

1. **File Station** → in the `docker` share, create a folder `seerrng`, and inside it a folder `seerrng-config`.
2. SeerrNG needs that config folder to belong to user 1000. Enable SSH (**Control Panel → Terminal & SNMP**), connect, and run:

   ```sh
   sudo chown 1000:1000 /volume1/docker/seerrng/seerrng-config
   ```

3. **Container Manager** → **Project** → **Create**: name `seerrng`, path `docker/seerrng`, source **Create docker-compose.yml**. Paste [compose.yaml](https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.yaml) and set `TZ` and `SEERR_FULL_URL` (`http://<NAS IP>:5055`).
4. **Next** → **Done**. It builds and starts.
5. Open `http://<NAS IP>:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)). Lumen is at `http://<NAS IP>:5080`.

</details>

<details>
<summary><picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/synology/ddd"><img src="https://cdn.simpleicons.org/synology/555" width="14"></picture> <b>SeerrNG already running</b>: add Lumen</summary>

<br>

1. **File Station** → in the `docker` share, create a folder `lumen`.
2. **Container Manager** → **Project** → **Create**: name `lumen`, path `docker/lumen`, source **Create docker-compose.yml**. Paste [compose.lumen-only.yaml](https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.lumen-only.yaml) and set `SEERR_URL` and `SEERR_FULL_URL` to `http://<NAS IP>:5055`.
3. **Next** → **Done**. It builds and starts.
4. Open `http://<NAS IP>:5080`.

</details>

</blockquote>

**Build fails mentioning `git`?** Download the [SeerrNG ZIP](https://github.com/snapetech-org/seerrng/archive/refs/heads/main.zip), unzip it into the project folder, rename the unzipped folder to `seerrng`, change the `build:` line to `build: ./seerrng/lumen`, and build again.

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/truenas/0095D5" width="14"> <b>TrueNAS SCALE</b></summary>

<br>

<blockquote>

<details>
<summary><img src="https://cdn.simpleicons.org/truenas/0095D5" width="14"> <b>New install</b>: SeerrNG and Lumen together</summary>

<br>

1. Create a dataset for SeerrNG's settings, for example `/mnt/tank/apps/seerrng`, owned by user 1000.
2. **Apps** → **Discover Apps** → ⋮ → **Install via YAML**. Name it `seerrng`.
3. Paste [compose.yaml](https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.yaml), change `./seerrng-config` to your dataset path, set `TZ` and `SEERR_FULL_URL` (`http://<TrueNAS IP>:5055`) → **Save**.
4. Open `http://<TrueNAS IP>:5055` and finish SeerrNG's setup wizard ([guide](https://github.com/snapetech-org/seerrng/tree/main/docs/getting-started)). Lumen is at `http://<TrueNAS IP>:5080`.

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/truenas/0095D5" width="14"> <b>SeerrNG already running</b>: add Lumen</summary>

<br>

1. **Apps** → **Discover Apps** → ⋮ → **Install via YAML**. Name it `lumen`.
2. Paste [compose.lumen-only.yaml](https://raw.githubusercontent.com/snapetech-org/seerrng/main/lumen/compose.lumen-only.yaml) and set `SEERR_URL` and `SEERR_FULL_URL` to `http://<TrueNAS IP>:5055` → **Save**.
3. Open `http://<TrueNAS IP>:5080`.

</details>

</blockquote>

**Install complains about `build`?** Build the image once in **System → Shell**, then delete the `build:` line from the YAML (keep `image: seerrng-lumen:local`) and save again:

```sh
sudo docker build -t seerrng-lumen:local https://github.com/snapetech-org/seerrng.git#main:lumen
```

</details>

<details>
<summary>❓ <b>Which addresses go in the file?</b> (<code>TZ</code>, <code>SEERR_URL</code>, <code>SEERR_FULL_URL</code>)</summary>

<br>

- `TZ` (new install): your time zone, for example `America/New_York` or `Europe/Berlin`.
- `SEERR_FULL_URL`: **the address you'd type in your browser to open full SeerrNG.** Lumen sends people there for pages it doesn't have, like Settings, Users and Issues. Pick the one that matches your setup:

  | Your setup | `SEERR_FULL_URL` |
  |---|---|
  | Full SeerrNG is only used at home | the machine's IP and port, e.g. `http://192.168.1.50:5055` |
  | Full SeerrNG has its own admin domain (protected, see Step 3) | that domain, e.g. `https://seerr.example.com` |

  With the IP, those links only work on your home network. With a domain, they work from anywhere. The domain must be a **different** one from Lumen's (see Step 2).
- `SEERR_URL`: **how Lumen talks to SeerrNG behind the scenes.** Nobody types this one into a browser; it can be a container name that only works between containers.

| How SeerrNG runs | `SEERR_URL` |
|---|---|
| Docker Compose, and you added Lumen **to the same file** | `http://seerrng:5055` (your SeerrNG service name) |
| Docker, in a different compose file or `docker run` (Unraid templates too) | `http://<machine's LAN IP>:5055`, e.g. `http://192.168.1.50:5055` |
| Installed directly on the same machine (Windows, Linux package, Snap) | `http://host.docker.internal:5055` with Docker Desktop, otherwise the LAN IP |
| On another machine | `http://<that machine's IP>:5055` |

If you changed SeerrNG's port, use yours instead of 5055.

</details>


### Step 2: How do people reach it?

If people reach SeerrNG through a domain today, point that domain at **Lumen** instead, so your family keeps the address they know. Full SeerrNG then needs an address of its own: a second domain for admins, or home network only. Set `SEERR_FULL_URL` to that address. For example:

| Address | Goes to | Who uses it |
|---|---|---|
| `https://requests.example.com` | Lumen | everyone |
| `http://192.168.1.50:5055` (simplest and safest), or a second domain such as `https://seerr.example.com` that only admins can get through (e.g. Cloudflare Access) | full SeerrNG, and `SEERR_FULL_URL` | admins |

Don't point both at Lumen: the Settings and Users links would just loop back into Lumen.

<details>
<summary>🏠 <b>Only at home</b> (no domain, no reverse proxy)</summary>

<br>

Nothing more to do. Share `http://<this-machine>:5080` with your family. Leave `LUMEN_TRUSTED_PROXIES` empty.

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/cloudflare/F38020" width="14"> <b>Cloudflare Tunnel</b></summary>

<br>

1. **Cloudflare dashboard** → **Zero Trust** → **Networks** → **Tunnels** → your tunnel → **Public Hostname**.
2. Edit the hostname that pointed at SeerrNG (or add one) and change the **Service** to:
   - `http://lumen:80` if `cloudflared` runs in Docker on the same network as Lumen, or
   - `http://<LAN IP>:5080` otherwise.
3. Keep full SeerrNG home-network only, or give it its own admin hostname (for example `seerr.example.com` → `http://seerrng:5055`) protected with a **Cloudflare Access** policy so only admins get through. Set `SEERR_FULL_URL` to that address.
4. Tell Lumen to trust the tunnel. Set these on the Lumen service and run `docker compose up -d`:

   ```yaml
   LUMEN_TRUSTED_PROXIES: 172.18.0.0/16   # cloudflared's IP or Docker subnet (see below)
   LUMEN_REAL_IP_HEADER: CF-Connecting-IP
   ```

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/nginxproxymanager/F15833" width="14"> <b>Nginx Proxy Manager</b></summary>

<br>

1. **Hosts** → **Proxy Hosts** → edit the host that pointed at SeerrNG (or **Add Proxy Host**).
2. **Scheme** `http`, **Forward Hostname / IP** `lumen` (same Docker network) or the LAN IP, **Forward Port** `80` (or `5080` with the LAN IP). Keep your SSL tab as it was.
3. Set on the Lumen service, then `docker compose up -d`:

   ```yaml
   LUMEN_TRUSTED_PROXIES: 172.18.0.0/16   # NPM's IP or Docker subnet (see below)
   LUMEN_REAL_IP_HEADER: X-Forwarded-For
   ```

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/caddy/1F88C0" width="14"> <b>Caddy</b></summary>

<br>

```caddy
requests.example.com {
    reverse_proxy lumen:80        # or 192.168.1.50:5080
}
```

Reload Caddy, then set on the Lumen service and `docker compose up -d`:

```yaml
LUMEN_TRUSTED_PROXIES: 172.18.0.0/16   # Caddy's IP or Docker subnet (see below)
LUMEN_REAL_IP_HEADER: X-Forwarded-For
```

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/traefikproxy/24A1C1" width="14"> <b>Traefik</b></summary>

<br>

Move your router labels from SeerrNG to Lumen:

```yaml
  lumen:
    # ...
    environment:
      LUMEN_TRUSTED_PROXIES: 172.18.0.0/16   # Traefik's IP or Docker subnet (see below)
      LUMEN_REAL_IP_HEADER: X-Forwarded-For
    labels:
      - traefik.enable=true
      - traefik.http.routers.lumen.rule=Host(`requests.example.com`)
      - traefik.http.routers.lumen.entrypoints=websecure
      - traefik.http.routers.lumen.tls.certresolver=letsencrypt   # your resolver's name
      - traefik.http.services.lumen.loadbalancer.server.port=80
    networks: [proxy]                                              # Traefik's network
```

</details>

<details>
<summary><img src="https://cdn.simpleicons.org/nginx/009639" width="14"> <b>SWAG or plain nginx</b></summary>

<br>

In your site config (for SWAG, the proxy-conf you used for SeerrNG), change the upstream:

```nginx
location / {
    proxy_pass http://lumen:80;          # was http://seerrng:5055
    proxy_set_header Host $host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
}
```

Reload nginx, then set on the Lumen service and `docker compose up -d`:

```yaml
LUMEN_TRUSTED_PROXIES: 172.18.0.0/16   # nginx's IP or Docker subnet (see below)
LUMEN_REAL_IP_HEADER: X-Forwarded-For
```

</details>

<details>
<summary>❓ <b>What do I put in <code>LUMEN_TRUSTED_PROXIES</code>?</b></summary>

<br>

Lumen only believes "the visitor's address is…" from a proxy you list, so nobody else can pretend to be someone else.

- **Proxy on another machine:** that machine's IP, for example `192.168.1.10`.
- **Proxy in Docker on the same machine:** its Docker network's range. Find it with:

  ```sh
  docker network inspect <network> --format '{{range .IPAM.Config}}{{.Subnet}}{{end}}'
  ```

  Use `bridge` for the default network, or `<folder>_default` for a compose project (e.g. `seerrng_default`). You'll get something like `172.18.0.0/16`.

List several with commas. Never use `0.0.0.0/0`. If you skip this, everything still works, but SeerrNG sees every visitor as the proxy, so everyone shares one sign-in limit.

</details>

### Step 3: One switch in SeerrNG

In full SeerrNG go to **Settings → Network**, turn on **Trust Reverse Proxy**, save, and restart SeerrNG (`docker compose restart seerrng`, or restart the container).

<details>
<summary>Why?</summary>

<br>

SeerrNG limits wrong-password attempts per visitor. With Lumen in front, every request reaches SeerrNG from Lumen, which passes on the real visitor's address. SeerrNG only reads it with this switch on. Without it, a few wrong passwords from one person could lock out everyone for a while.

Keep full SeerrNG off the open internet: don't port-forward 5055, and if it has its own domain, put a sign-in wall in front of it (for example Cloudflare Access) so only admins can reach it. Your family uses Lumen.

</details>

### Step 4: Sign in and share it

Open Lumen, sign in with your usual Plex, Jellyfin, Emby or SeerrNG account, and look around. Lumen and full SeerrNG work side by side, so you can try it as long as you like before telling anyone. When you're happy, share the Lumen address (or point your domain at it in Step 2). Your family keeps the same accounts.

## Settings for everyone (optional)

Every person can change how Lumen works on their **You** page. As an admin you can set the defaults, lock any of them, change the sign-in page and add your own name and logo.

1. Sign in as an admin → **You** → **Lumen settings for everyone**.
2. Pick what you want and press **Download lumen-config.json**.
3. Put the file next to your `compose.yaml`. For a logo or tab icon, put the images in a `branding` folder there too.
4. In `compose.yaml`, remove the `#` in front of these lines under `lumen`, then run `docker compose up -d`:

   ```yaml
   volumes:
     - ./lumen-config.json:/usr/share/nginx/html/lumen-config.json:ro
     - ./branding:/usr/share/nginx/html/branding:ro   # optional logo / tab icon
   ```

Create the file **before** adding the lines: if it's missing, Docker makes a folder with that name and Lumen ignores it.

- `:ro` at the end of each line means **read-only** (Lumen can read the files but never change them). It isn't part of the file name: the file is just `lumen-config.json`.
- **No permissions to change.** Lumen only reads these files, so the usual defaults are fine. (The `chown 1000:1000` in the install steps is only for SeerrNG's own config folder.)
- Use the downloaded file rather than an empty one. If you want to mount the folder before you've chosen anything, put `{}` in it.

<details>
<summary><img src="https://cdn.simpleicons.org/unraid/F15A2C" width="14"> <b>On Unraid</b></summary>

<br>

1. In **Terminal** (`>_`), make the folder: `mkdir -p /mnt/user/appdata/lumen/branding`
2. Copy the downloaded `lumen-config.json` into `/mnt/user/appdata/lumen/`, for example over the network share `\\<Unraid IP>\appdata\lumen` (with the appdata share exported) or with the **Dynamix File Manager** plugin. Put a logo or icon in `branding` if you want one.
3. Open the `lumen` stack → **Edit Stack**, remove the `#` in front of the three `volumes` lines, **Ctrl+S**, then **Compose Up**.
   Without Compose: edit the container and **Add another Path** for each: container `/usr/share/nginx/html/lumen-config.json` → host `/mnt/user/appdata/lumen/lumen-config.json` (Access Mode **Read Only**), and container `/usr/share/nginx/html/branding` → host `/mnt/user/appdata/lumen/branding`.

</details>

<details>
<summary>What's in the file</summary>

<br>

```json
{
  "seerrPublicUrl": "https://seerr.example.com",
  "mediaServer": "auto",
  "loginStyle": "form",
  "branding": { "name": "Movie Night", "logo": "/branding/logo.png", "icon": "/branding/icon.png" },
  "defaults": {
    "hoverRequest": true,
    "wholeSeriesDefault": true,
    "requestOptions": true,
    "narratorChoice": true,
    "showBooks": true,
    "theme": "dark",
    "rows": { "genres": true, "comingSoon": true }
  },
  "locked": ["showBooks"]
}
```

| Key | What it does |
|---|---|
| `mediaServer` | `auto` follows SeerrNG; or `plex`, `jellyfin`, `emby`. |
| `loginStyle` | `"form"` shows username and password straight away for Jellyfin and Emby, with no server names. |
| `branding` | Your name, logo and browser tab icon (files in `./branding` or `https://` addresses). |
| `defaults` | What everyone starts with. `theme` can be `dark`, `light` or `system` (follows the device). |
| `requestOptions` | Admins and request managers choose server, quality and folder when requesting from a poster. |
| `locked` | Settings people can't change, e.g. `["showBooks"]`. |
| `seerrPublicUrl` | The "Open full SeerrNG" link on the You page. |

</details>

## Updating

In the folder with `compose.yaml`:

```sh
docker compose pull --ignore-buildable   # updates SeerrNG (new-install file only)
docker compose build --pull              # rebuilds Lumen from the latest code
docker compose up -d
```

People get the new version the next time they open or refresh Lumen. **Unraid:** run the `docker build` line from the Unraid section, then **Compose Up** (or restart the container if you used Add Container).

## Switching back

Lumen changes nothing in SeerrNG. Point your proxy back at SeerrNG (or share the old address), then `docker compose stop lumen`. That's it.

## Troubleshooting

<details>
<summary><b>I still see the old page after switching.</b></summary>

<br>

Your browser cached it. Refresh. On a phone, close the tab or home-screen app completely and reopen it.

</details>

<details>
<summary><b>"502 Bad Gateway", or sign-in fails straight away.</b></summary>

<br>

Lumen can't reach SeerrNG, so `SEERR_URL` is wrong. Test from inside Lumen (use your `SEERR_URL`):

```sh
docker compose exec lumen wget -qO- http://seerrng:5055/api/v1/status
```

It should print SeerrNG's version. If not, try the LAN IP instead of the container name, or the other way round.

</details>

<details>
<summary><b>Everyone got "too many attempts" at once.</b></summary>

<br>

SeerrNG sees everyone as one visitor. Turn on **Trust Reverse Proxy** (Step 3) and, behind a proxy, set `LUMEN_TRUSTED_PROXIES` (Step 2).

</details>

<details>
<summary><b>Lumen stops right after starting.</b></summary>

<br>

Run `docker compose logs lumen`. A message about `LUMEN_TRUSTED_PROXIES` or `LUMEN_REAL_IP_HEADER` means a value isn't allowed: proxies must be IPs or ranges separated by commas, and the header must be `X-Forwarded-For`, `CF-Connecting-IP` or `X-Real-IP`.

</details>

<details>
<summary><b>SeerrNG won't start: "permission denied" on <code>/app/config</code>.</b></summary>

<br>

The config folder doesn't belong to user 1000. Run `sudo chown -R 1000:1000 seerrng-config`.

</details>

<details>
<summary><b>The build fails, mentioning <code>git</code>.</b></summary>

<br>

Some NAS systems can't build from a GitHub address. Download the [SeerrNG ZIP](https://github.com/snapetech-org/seerrng/archive/refs/heads/main.zip), unzip it next to `compose.yaml`, rename the folder to `seerrng`, and change the `build:` line to `build: ./seerrng/lumen`.

</details>

<details>
<summary><b>Settings, Users or Issues open the wrong address.</b></summary>

<br>

Those pages live in full SeerrNG. Set `SEERR_FULL_URL` to the address people use for it and run `docker compose up -d`.

</details>

<details>
<summary><b>Books, Music, Games… don't show up.</b></summary>

<br>

Each section appears only when SeerrNG has it switched on (**Settings → General → Media categories**) **and** a service connected for it (for example ChaptarrNG for books).

</details>

More detail: SeerrNG's full [Lumen guide](https://github.com/snapetech-org/seerrng/blob/main/docs/using-seerr/lumen.md).

## Credits

Lumen was designed and built by [Ncbudd](https://github.com/ncbudd) and merged into [SeerrNG](https://github.com/snapetech-org/seerrng) by the SeerrNG maintainers, who also hardened it. SeerrNG builds on [Seerr](https://github.com/seerr-team/seerr) and Overseerr. MIT licensed, see [LICENSE](LICENSE).

Screenshots are from a test server; posters and artwork come from TMDB.
