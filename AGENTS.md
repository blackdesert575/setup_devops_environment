# Repository Guidelines

## Project Structure & Module Organization
- `docs/` holds the MkDocs content (Markdown topics grouped by area). Add new notes here using existing folder patterns.
- `mkdocs.yml` defines the site config and dev server address.
- `scripts/` contains helper scripts (shell and Python).
- `packer/`, `vmware/`, and `virtualbox/` contain VM/build tooling and configs.
- `site/` is the generated static site output (avoid editing by hand).

## Build, Test, and Development Commands
- `uv sync` installs Python dependencies into `.venv`.
- `source .venv/bin/activate` activates the virtual environment.
- `mkdocs serve` runs the local docs server (uses `127.0.0.1:10000` from `mkdocs.yml`).
- `mkdocs build` generates static files into `site/`.
- `docker compose up -d` runs the containerized site locally.
- `docker build . -t <image>:<tag>` builds the Docker image (see `Dockerfile` / `Dockerfile.ci`).

## Coding Style & Naming Conventions
- Markdown: keep headings descriptive, use sentence-case titles, and wrap long lines thoughtfully.
- Python: use 4-space indentation and keep scripts small and single-purpose (see `scripts/`).
- Shell: prefer `bash` with `#!/usr/bin/env bash` when adding new scripts.
- Filenames: use descriptive, lower-case names; mirror existing folder names for new topics.

## Testing Guidelines
- There is no formal test framework. Keep changes small and validate manually.
- Run the lightweight check in `scripts/test_robots.py` as needed: `python scripts/test_robots.py`.

## Commit & Pull Request Guidelines
- Commit messages are short, imperative, and often reference paths (e.g., `Update docs/**.md`, `Fix mkdocs.yml`).
- Prefer one topic per commit; include a brief scope if helpful.
- Pull requests should describe the change, list affected sections, and include screenshots for major doc/layout changes.

## Documentation Workflow Tips
- Add new content under `docs/` and update links or navigation as needed.
- Avoid editing generated files in `site/`; rebuild with `mkdocs build` instead.
