# ⚽ German Bundesliga Performance Analysis
### 🎯 Case Study: Bayer 04 Leverkusen’s Unbeaten 2023/24 Season

![Python](https://img.shields.io/badge/python-3.10+-blue)
![License](https://img.shields.io/badge/license-MIT-green)

This project combines **DuckDB**, **Pandas**, **Seaborn/Matplotlib**, and **Plotly** to analyze one of the most historic Bundesliga campaigns ever — **Bayer 04 Leverkusen’s unbeaten run in the 2023/24 season**.

We explore:

1. **What drives player market value?**  
2. **How dominant was Bayer Leverkusen in 2023/24?**  
3. **Can simple match stats forecast market value?**

---

## 📂 Project Structure

```
bundesliga-performance-analysis/
│
├── data/
│   └── raw/
│
├── figures/
│   ├── bundesliga-project-preview.png
│   └── ...
│
├── notebooks/
│   └── bundesliga_performance.ipynb        # Main notebook
│
├── sql/
│   └── sql_queries.sql                     # Standalone SQL queries
│
├── docs/
│   └── index.html
│
├── .gitignore
├── LICENSE
├── README.md
└── requirements.txt                        # Python dependencies

```

---

## 🔑 Key Features

### ⚙️ Hybrid SQL & Python Workflow
- **DuckDB** for fast in-memory joins & queries  
- **Pandas**, **Seaborn**, and **Plotly** for cleaning, EDA, and visualization  

### ✅ Data Quality & Preprocessing
- Snake_case column renaming via regex  
- Datetime parsing with error detection  
- Referential integrity checks (e.g., orphan `player_id`s)

### 📊 In-Depth Performance & Valuation Analysis
- **Cumulative goals & assists** over the season  
- **Match result distributions** (W/D/L)  
- **Player market value trends** over time  
- **Random Forest feature importance** (goals vs. assists vs. minutes)  
- **Regression modeling** with Ridge & cross-validation  

### 📈 Key Match Highlight
- Storytelling overlay: Bayer Leverkusen’s **3–0 tactical masterclass vs. Bayern** (Feb 10, 2024)  
- Interpreted within the **cumulative contribution graph** to show real-world impact on trends

### 🧪 Reproducibility
- Structured notebook with markdown commentary  
- `requirements.txt` for full environment recreation  
- `/sql/` folder for modular query reuse  

---

## 🚀 Getting Started

```bash
git clone https://github.com/itzmore-mph/itzmore-mph-portfolio.git
cd itzmore-mph-portfolio
pip install -r requirements.txt
jupyter notebook bundesliga_portfolio_final.ipynb
```
## Usage & Interpretation
- Follow the Jupyter Notebook’s narrative flow for insight-rich storytelling.
- Adjust the club_id in both the notebook and SQL files to analyze other teams.
- SQL queries are modular — explore sql/sql_queries.sql for standalone usage.

## Future Directions
- Add richer features: contract length, player age, xG/xa, injury history
- Extend modeling: XGBoost, LightGBM, and neural nets
- Deploy via Streamlit dashboard for scouting teams to explore in real time
- Expand the approach to other leagues (Serie A, Premier League, etc.)

Moritz Philipp Haaf, BSc MA

itzmore.dev@gmail.com

itzmore-mph/itzmore-mph-portfolio
