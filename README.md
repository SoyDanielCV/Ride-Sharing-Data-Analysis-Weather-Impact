# 🚕 Ride-Sharing Data Analysis & Weather Impact (Zuber)

---

## 🇪🇸 Español

### 📊 Descripción
Proyecto de análisis de datos enfocado en una empresa de ride-sharing, combinando SQL y Python para identificar patrones de demanda y evaluar el impacto de factores externos como el clima en la duración de los viajes.

---

### 💼 Contexto de negocio
Zuber es una startup de transporte que busca optimizar sus operaciones mediante el análisis de datos.  
El objetivo es comprender el comportamiento de los usuarios y cómo factores externos afectan los viajes para mejorar la toma de decisiones.

---

### 🛠️ Tecnologías
- SQL  
- Python  
- Pandas  
- Matplotlib / Seaborn  
- SciPy  
- BeautifulSoup  

---

### ⚙️ Proceso

#### 1. Extracción de datos (SQL)
- Análisis de viajes por empresa  
- Identificación de zonas con mayor demanda  
- JOIN entre viajes y clima usando timestamps  
- Clasificación del clima en *Good* / *Bad*  

#### 2. Web Scraping
- Extracción de datos climáticos usando Python y BeautifulSoup  

#### 3. Análisis exploratorio (Python)
- Top empresas por número de viajes  
- Top 10 zonas con más drop-offs  
- Visualización de patrones de demanda  

#### 4. Prueba de hipótesis
- Test t para comparar duración de viajes:
  - Clima bueno vs clima lluvioso  
- Nivel de significancia: 0.05  

---

### 📈 Resultados
- Flash Cab fue la empresa con mayor número de viajes (~20,000 en 2 días)  
- Loop y River North concentran la mayor demanda  
- Se encontró una diferencia estadísticamente significativa en la duración de los viajes bajo condiciones de lluvia:
  - p-value ≈ 0.0000  

---

### 💡 Insights clave
- El clima impacta directamente la operación (mayor duración de viajes)  
- La demanda está altamente concentrada en zonas específicas  
- Existen diferencias claras entre compañías en volumen de viajes  

---

### 🚀 Impacto de negocio
- Permite optimizar tiempos de viaje en condiciones climáticas adversas  
- Mejora la planificación operativa y asignación de recursos  
- Apoya decisiones de pricing dinámico y gestión de demanda  

---

## 🇺🇸 English

### 📊 Description
Data analysis project combining SQL and Python to uncover demand patterns and evaluate the impact of weather conditions on ride duration in a ride-sharing business.

---

### 💼 Business Context
Zuber is a ride-sharing startup aiming to optimize operations through data analysis.  
The goal is to understand user behavior and how external factors affect trips to improve decision-making.

---

### 🛠️ Tech Stack
- SQL  
- Python  
- Pandas  
- Matplotlib / Seaborn  
- SciPy  
- BeautifulSoup  

---

### ⚙️ Workflow

#### 1. Data Extraction (SQL)
- Trips per company analysis  
- High-demand areas identification  
- JOIN between trips and weather data  
- Weather classification (Good / Bad)  

#### 2. Web Scraping
- Extracted weather data using BeautifulSoup  

#### 3. Exploratory Data Analysis
- Top taxi companies  
- Top 10 neighborhoods by drop-offs  
- Demand visualization  

#### 4. Hypothesis Testing
- T-test comparing trip duration:
  - Good weather vs rainy weather  
- Significance level: 0.05  

---

### 📈 Results
- Flash Cab had the highest number of trips (~20,000 in 2 days)  
- Loop and River North are the top demand areas  
- Statistically significant difference in trip duration during rainy conditions:
  - p-value ≈ 0.0000  

---

### 💡 Key Insights
- Weather significantly impacts ride duration  
- Demand is highly concentrated in specific areas  
- Clear differences between companies in trip volume  

---

### 🚀 Business Impact
- Enables better operational planning under weather conditions  
- Supports demand forecasting and resource allocation  
- Can inform dynamic pricing strategies  

## ⚙️ How to Run This Project

Follow these steps to run the project locally:

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/uber-taxi-analysis.git
cd uber-taxi-analysis
```

### 2. Install dependencies

Make sure you have Python installed, then run:

```bash
pip install -r requirements.txt
```

### 3. Run the weather data scraper

```bash
python src/weather_scraper.py
```

This will extract weather data and save it locally in the `data/` folder.

### 4. Open the analysis notebook

```bash
jupyter notebook notebooks/taxi_analysis.ipynb
```

Run all cells to reproduce the analysis, visualizations, and hypothesis testing.

---

## 📊 Data Sources

* Taxi trip datasets (provided as part of the project)
* Weather data scraped from:
  https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html

---

## 🧪 Hypothesis Tested

**"The average duration of trips from Loop to O'Hare changes during rainy Saturdays."**

* Statistical test used: Independent t-test
* Significance level (alpha): 0.05
* Result: A statistically significant difference was found (p < 0.05)

---

## 📦 Requirements

All dependencies are listed in:

```
requirements.txt
```
