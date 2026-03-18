# ⚽ Bundesliga Performance Analysis

**Case study:** Bayer 04 Leverkusen's 2023/24 Bundesliga season

This repository presents an end-to-end football analytics case study built around **Bundesliga team performance**, **player valuation**, and **season storytelling** using **Python**, **DuckDB**, and **Jupyter Notebook**.

The project uses Bayer 04 Leverkusen's 2023/24 campaign as the main narrative example and combines SQL-style exploration, Python-based preprocessing, visual analysis, and simple predictive modeling.

---

## Project goals

This project focuses on three main questions:

1. **How dominant was Bayer 04 Leverkusen in the 2023/24 Bundesliga season?**
2. **How do player performance indicators relate to market value?**
3. **How can SQL, pandas, and visual analytics be combined in a clean football analytics workflow?**

---

## Tech stack

- **Python**
- **DuckDB**
- **pandas**
- **NumPy**
- **Matplotlib / Seaborn**
- **scikit-learn**
- **Jupyter Notebook**

---

## Repository structure

```text
bundesliga-performance-analysis/
├── docs/
│   └── index.html
├── figures/
│   └── plot-annual-market-value-trend.png
├── notebooks/
│   └── bundesliga_performance_analysis.ipynb
├── .gitignore
├── LICENSE
├── README.md
├── requirements.txt
└── requirements-dev.txt
```

---

## Dataset and data access

The project uses the **transfermarkt-datasets** source by `dcaribou`, accessed **remotely via DuckDB** and hosted `.csv.gz` files.

Core tables used in the notebook include:

- `appearances`
- `club_games`
- `clubs`
- `competitions`
- `game_events`
- `games`
- `player_valuations`
- `players`

This remote-only approach avoids local `data/raw/` mismatches across tables and improves reproducibility.

> **Important:** Running the notebook requires an internet connection.

---

## Analysis workflow

The notebook is structured as a compact football analytics case study:

### 1. Remote loading and preprocessing
- load Transfermarkt tables remotely via DuckDB
- standardize and inspect columns
- parse dates and prepare season-specific subsets

### 2. SQL-based exploration with DuckDB
- query match, team, and player-level data
- combine multiple tables efficiently
- validate assumptions before visualization and modeling

### 3. Exploratory data analysis
- goals vs assists
- match result distribution
- market value trend exploration
- cumulative attacking output over the season

### 4. Performance storytelling
- focus on Bayer 04 Leverkusen's 2023/24 season
- examine cumulative contributions and season dominance
- connect quantitative outputs to a real football narrative

### 5. Predictive modeling
- baseline regression approach for market value prediction
- tree-based feature importance for interpretability
- emphasis on learning value, not only raw predictive performance

---

## Key outputs

Examples of outputs generated in the notebook include:

- player contribution charts
- Bayer Leverkusen win / draw / loss breakdown
- market value trend visualizations
- feature importance charts
- cumulative season-level performance views

---

## Getting started

### 1. Clone the repository

```bash
git clone https://github.com/itzmore-mph/bundesliga-performance-analysis.git
cd bundesliga-performance-analysis
```

### 2. Create and activate a virtual environment

**macOS / Linux**

```bash
python -m venv .venv
source .venv/bin/activate
```

**Windows**

```bash
python -m venv .venv
.venv\Scripts\activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Launch the notebook

```bash
jupyter notebook notebooks/bundesliga_performance_analysis.ipynb
```

---

## Reproducibility notes

To run the notebook successfully:

- use a live internet connection
- run the notebook from top to bottom
- avoid mixing local CSV snapshots into the workflow
- keep the package environment close to the provided requirements

The analysis is centered on the **2023/24 Bundesliga season** and uses **Bayer 04 Leverkusen** as the featured case study.

---

## Why this project matters

This repository is designed as a portfolio-style project that demonstrates:

- practical football analytics thinking
- SQL + Python workflow integration
- clear visual storytelling
- reproducible notebook-based analysis
- applied machine learning in a sports context

It is especially relevant for roles in:

- football data analytics
- sports data science
- performance analysis
- analytics engineering
- scouting and decision support

---

## Possible next improvements

Future extensions could include:

- richer player features such as age, contract length, position groups, or per-90 metrics
- expected goals or expected assists features from event data providers
- model benchmarking with XGBoost or LightGBM
- migration from notebook-first analysis to a small Streamlit app
- extension to other leagues for cross-league comparison

---

## Author

**Moritz Philipp Haaf**  
Freelance Sports Data Scientist  
GitHub: [itzmore-mph](https://github.com/itzmore-mph)
Portfolio: [itzmore.dev](https://itzmore.dev)


---

## License

This project is licensed under the **Apache-2.0 License**.