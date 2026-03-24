# Bundesliga Performance Analysis

## Case Study - Bayer 04 Leverkusen's Historic 2023/24 Unbeaten Season

![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-Apache%202.0-green)
![DuckDB](https://img.shields.io/badge/DuckDB-remote--first-yellow?logo=duckdb)
![Status](https://img.shields.io/badge/Status-Portfolio%20Ready-brightgreen)

> **Key Finding:** Bayer 04 Leverkusen went 34 Bundesliga games unbeaten in 2023/24 — the first club in Bundesliga history to do so. Their dominance was built on collective depth: 4 players with 9+ goals AND 9+ assists. This notebook quantifies *how far* ahead they were, *who* drove it, and *what* season-level performance data can (and cannot) explain about player market value.

This repository presents a notebook-first football analytics case study focused on **Bayer 04 Leverkusen's unbeaten 2023/24 Bundesliga campaign**.

The project combines:
- **DuckDB** for fast SQL-style querying
- **Pandas** for shaping analysis tables
- **Matplotlib / Seaborn** for visual exploration
- **scikit-learn** for a lightweight market value modeling demonstration

The analysis is designed as a **portfolio project for football analytics and sports data roles**, with a strong emphasis on clear scoping, reproducibility, and readable storytelling.

---

## Headline findings

- **Unbeaten across 34 matches** - 28 wins, 6 draws, 0 losses, with a goals-per-game rate well above the Bundesliga average.
- **Collective attacking depth** - Victor Boniface (14G+14A), Florian Wirtz (11G+11A), Alejandro Grimaldo (10G+8A), and Jeremie Frimpong (9G+9A) all exceeded 9 combined goal contributions. No single-player dependency.
- **Dominant home and away** - the unbeaten run held across both venues, confirming structural quality rather than home-ground reliance.
- **Valuation modeling insight** - expanding to all 300+ Bundesliga players and using per-90 rates, age, and position group substantially improves on a raw counting-stat baseline, yet key drivers (contract length, injury history, international profile) remain unobserved — an honest and analytically instructive result.

---

## Project objective

This case study explores three main questions:

1. **How dominant was Bayer 04 Leverkusen in the Bundesliga 2023/24 season?**
2. **Which players contributed most strongly across the campaign?**
3. **How far can simple season aggregates go in explaining player market value?**

---

## Supported workflow

This repository's **supported workflow is remote-first and snapshot-consistent**.

The notebook loads all core Transfermarkt tables from a **single hosted DuckDB-readable source** using remote `.csv.gz` files. This avoids version mismatches across tables such as `games`, `appearances`, `club_games`, and `player_valuations`.

The supported workflow does **not** require a local `data/raw/` directory.

---

## Data source

The project uses the public **[transfermarkt-datasets](https://github.com/dcaribou/transfermarkt-datasets)** project maintained by [David Caribou (@dcaribou)](https://github.com/dcaribou), licensed under **[CC0 1.0 Universal (Public Domain)](https://github.com/dcaribou/transfermarkt-datasets/blob/master/LICENSE)**.

> Data sourced from `transfermarkt-datasets` by David Caribou — [github.com/dcaribou/transfermarkt-datasets](https://github.com/dcaribou/transfermarkt-datasets). Licensed CC0 1.0 Universal.

Relevant tables include:
- `games`
- `appearances`
- `club_games`
- `game_events`
- `players`
- `player_valuations`
- `clubs`
- `competitions`

These tables are linked through shared IDs such as `game_id`, `player_id`, `club_id`, and `competition_id`.

---

## Why remote DuckDB

A key design choice in this project is using **remote DuckDB access** instead of local raw CSV snapshots.

Benefits:
- avoids mixing tables from different download dates
- improves reproducibility across machines
- keeps the repository lighter and cleaner
- makes the notebook the single analytical source of truth

---

## Repository structure

```text
bundesliga-performance-analysis/
├── notebooks/
│   └── bundesliga_performance_analysis.ipynb
├── figures/
│   └── ... optional exported charts
├── requirements.txt
├── requirements-dev.txt
├── README.md
└── LICENSE
```
---

## Reproducibility

To reproduce the analysis:

1. Create a clean Python environment
2. Install the listed dependencies
3. Ensure internet access is available for:
   - the hosted dataset
   - DuckDB `httpfs`
4. Run the notebook top-to-bottom from a clean kernel

The notebook includes **early validation checks** to detect:
- missing remote access support
- stale or incomplete join coverage
- unexpected season or team scoping issues
- weak valuation coverage for modeled players

---

## Installation

### Core environment

```bash
pip install -r requirements.txt
```

### Notebook environment

```bash
pip install -r requirements-dev.txt
```

If needed, install and register a notebook kernel:

```bash
pip install ipykernel
python -m ipykernel install --user --name bundesliga-analysis --display-name "Python (bundesliga-analysis)"
```

---

## Main tools and libraries

- Python
- DuckDB
- Pandas
- NumPy
- Matplotlib
- Seaborn
- adjustText
- scikit-learn
- Jupyter / ipykernel

---

## Modeling note

The market value modeling section is intentionally **illustrative**, not production-grade.

The sample is relatively small and based on simple season-level aggregates, so model outputs should be interpreted as a lightweight demonstration of:
- feature preparation
- validation framing
- baseline comparison
- analytical limitations

It is included to show workflow thinking, not to claim a production-ready football valuation model.

---

## Current scope

- **Competition:** Bundesliga (`L1`)
- **Season:** 2023/24
- **Club:** Bayer 04 Leverkusen

This narrow scope is intentional. It keeps the case study coherent and easier to interpret for portfolio review.

---

## Future improvements

Possible next extensions include:
- xG and xA from event data for a luck-vs-skill decomposition
- contract years remaining and injury records to improve valuation modeling
- multi-season comparison to test whether the 2023/24 season was an outlier or part of a trend
- expansion to additional leagues for cross-league benchmarking

---

## Portfolio purpose

This project is part of my football analytics portfolio and is intended to demonstrate:
- SQL plus Python workflow design
- scoped sports data analysis
- analytical storytelling
- reproducible notebook structure
- honest interpretation of model limitations

---

## Author

**Moritz Philipp Haaf**

- LinkedIn: `https://www.linkedin.com/in/moritz-philipp-haaf/`
- GitHub: `https://github.com/itzmore-mph`
