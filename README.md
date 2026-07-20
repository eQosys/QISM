# QISM

QISM is the assembler for QISM assembly (`.qsm`) code, producing binary output readable by the QIPU CPU. QISM itself is written in [QINP](../qinp).

## Building

```
scripts/build.sh
```

produces `bin/qism` (requires the `qinp` compiler on `PATH`). `scripts/install.sh`/`scripts/uninstall.sh` symlink it into `~/.local/bin`.

## Usage

```
qism [options*] <input_file>
```

| Option | Description |
| --- | --- |
| `-h` | show help and exit |
| `-o=<output_file>` | output file name (default: `<input_file>.bin`) |
| `-v` | verbose mode |
| `-f=<format>` | output format: `bin` (default), `bintxt`, `hextxt` |
| `-a` | add source-line annotations to text output formats (ignored with `-d`) |
| `-d` | disassembly mode: reads a `bin` file, writes `.qsm` assembly text (`-f=` is ignored) |

See the header comment in `QISM.qnp` for the full assembly language reference (registers, instructions, literal modifiers, comments, labels).

## Status

- Assembling `.qsm` source to `bin`/`bintxt`/`hextxt` is implemented.
- Disassembly (`-d`) is implemented. It reads a `bin` file and prints the literal canonical encoding of each instruction (real mnemonics and numeric literals only) — it does not reconstruct labels or pseudo-instructions like `not`/`jpr`, and only `bin` input is supported (not `bintxt`/`hextxt`).
