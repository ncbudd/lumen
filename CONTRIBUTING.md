# Testing Lumen and sending changes

Lumen lives in [SeerrNG](https://github.com/snapetech-org/seerrng/tree/main/lumen). This repo shows it off, has the step-by-step install guide, and is where testers send feedback and pull requests.

## How the two repos stay in sync

- **`lumen/` here is always a copy of `lumen/` in SeerrNG's `main` branch.** A GitHub Action copies it every 6 hours (and can be run by hand from the Actions tab). [`UPSTREAM`](UPSTREAM) names the SeerrNG commit it matches.
- **Changes are made in SeerrNG first.** Anything merged into SeerrNG arrives here with the next sync. Nothing is merged into `lumen/` here directly, or the next sync would overwrite it.
- **Open SeerrNG pull requests for Lumen are mirrored here** as pull requests titled `[SeerrNG #<number>]`, so you can read and try them before they're merged. They close once the change is in SeerrNG and has synced.

## Found a problem or have an idea?

Open an [issue](../../issues) with what you did, what you expected, what happened, and your device and browser. Screenshots help a lot.

## Sending a pull request

1. Fork this repo and make your change inside `lumen/`.
2. Open a pull request here. The **Lumen tests** check builds Lumen and runs its type check, unit tests and browser tests (desktop, iPhone, Android and tablet). Please get it green.
3. Pull requests are checked and tested on real servers, then the approved ones are **combined into one SeerrNG pull request** (each change keeps its author, so you get the credit). Your pull request is linked from it.
4. When SeerrNG merges it, the sync brings it into `lumen/` here and your pull request is closed with a link to the merged change.

Changes to the README, screenshots or guides in this repo (outside `lumen/`) are merged here directly.

## Working on Lumen locally

```sh
cd lumen
npm ci
SEERR_URL=http://<your-seerrng>:5055 npm run dev   # http://localhost:5173
npm test                                           # unit tests
npx playwright install chromium webkit
npx playwright test                                # browser tests
```

`LUMEN_MOCKS=1 npm run dev` fills in sample data for the categories most test servers don't have (comics, magazines, games, sports). See [`lumen/README.md`](lumen/README.md) for the rest.
