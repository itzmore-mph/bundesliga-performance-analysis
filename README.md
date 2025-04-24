# ⚽ German Bundesliga Performance & Valuation Portfolio

![Python](https://img.shields.io/badge/python-3.10+-blue)  
![License](https://img.shields.io/badge/license-MIT-green)

In this project we combine DuckDB, Pandas, Seaborn/Matplotlib, and Plotly to answer three key questions:

1. **What drives player market value?**  
2. **How dominant was Bayern in 2023/24?**  
3. **Can simple on-field stats forecast future value?**

---

## 📂 Project Structure
```
bundesliga-portfolio/
│
├── data/raw/                                # CSVs from Kaggle
│   ├── appearances.csv
│   ├── club_games.csv
│   ├── clubs.csv
│   ├── competitions.csv
│   ├── game_events.csv
│   ├── games.csv
│   ├── player_valuations.csv
│   └── players.csv
│
├── sql/                                     # Standalone SQL queries
│   └── sql_queries.sql
│
├── requirements.txt                         # Python dependencies
├── bundesliga_portfolio_final.ipynb         # Main notebook
└── README.md                                # README
```

---

## 🔑 Key Features

1. **Hybrid SQL & Python Workflow**  
   - **DuckDB** views over CSVs for fast, in-notebook joins & aggregations  
   - **Pandas**, **Matplotlib/Seaborn**, and **Plotly** for cleaning, EDA, and interactive plotting  

2. **Data Quality & Preprocessing**  
   - Snake_case column standardization via regex helper  
   - Datetime parsing (`errors='coerce'`) to detect invalid dates  
   - Early **orphan-key** checks to ensure referential integrity  

3. **Comprehensive Analysis**  
   - **xG vs Goals** correlation  
   - **Match result** distribution (W/D/L)  
   - **Market-value** trend analysis  
   - **Predictive modeling** with Ridge regression & 5-fold CV  
   - **Cumulative** xG and actual goals over time  

4. **Standalone SQL Queries**  
   - Fetch total goals, xG, assists, match results, and most-valuable players  
   - Parameterized on `club_id = 27` for FC Bayern, easily adjustable  

5. **Reproducibility**  
   - Clear section headings & narrative interpretations  
   - Requirements list for easy environment setup  
   - README and `/sql/` folder document how to run everything end-to-end  

---

## 🚀 Getting Started

1. **Clone the repository**  
   ```bash
   git clone https://github.com/itzmore-mph/itzmore-mph-portfolio.git
   cd itzmore-mph-portfolio
   ```

2. **Install dependencies**

pip install pandas numpy seaborn matplotlib plotly duckdb scikit-learn

3. **Verify data path**
Ensure the Raw-Data_CSV_Football-Analysis_German-Bundesliga/ directory sits at the project root.

4. **Run the Jupyter Notebook**

jupyter notebook bundesliga_portfolio_final.ipynb

5. **Execute the SQL script (optional)**
If you have DuckDB installed, you can run all SQL queries in one go:

duckdb --read-only -f sql/bayern_queries.sql
Or open sql/sql_queries.sql in your preferred SQL client—remember to adjust club_id or <match_id> as needed.

## Usage & Interpretation
Follow the notebook’s narrative cells for context and insights after each chart or table.

Inspect the /sql/bayern_queries.sql file for “pure” SQL versions of key aggregations and filters.

Adapt the notebook or SQL scripts to analyze other clubs by changing club_id (e.g. find another ID in your clubs.csv).

## Future Directions
Add fan-engagement and physical metrics (e.g. distance covered).

Build an interactive dashboard with Streamlit or Voilà.

Extend the workflow to other seasons or leagues.

Moritz Philipp Haaf, BSc MA
moritz_haaf@outlook.com
itzmore-mph/itzmore-mph-portfolio
