# Rune Stamp

Stamp one of 24 Elder Futhark runes on-chain to mint a sequential ID. Stacks Clarity 4.

## Contract

- **Address:** `SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.rune-stamp`
- **Network:** Stacks Mainnet
- **Clarity Version:** 4
- **Explorer:** [view on Hiro Explorer](https://explorer.hiro.so/SP16F6839630K5XX06KE7KVNSNMYBK89912NH6N4C.rune-stamp?chain=mainnet)

## Functions

- `(stamp rune)` — claim the next sequential ID for `rune` (1-24). Records caller and block height.
- `(get-stamp id)` — read-only, returns the stamp entry for an ID.
- `(get-next-id)` — read-only, returns the next ID that will be minted.

## Frontend

Static HTML in `frontend/`. Pick a rune from the 24-glyph grid, connect a wallet, stamp.

## License

MIT

---

_Last updated: 2026-05-15_
