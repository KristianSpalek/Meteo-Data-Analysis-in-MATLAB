# 📊 MATLAB Meteorological Data Analyzer

This repository contains a complete solution for the **Informatika** course semester project. The application is designed to process and analyze a specific meteorological dataset (`meteodata.mat`) containing minute-by-minute weather records.

## 📋 Project Specifications
The system works with a 10-column data matrix structured as follows:
* **Time:** Month, Day, Hour, Minute (Cols 1-4)
* **Parameters:** Temperature, Humidity, Wind Speed, Wind Direction, Pressure, Solar Radiation (Cols 5-10)

## 🚀 Implemented Features (Based on Assignment)
The project exceeds the minimum requirements by implementing **18 modular functions**, including:

### 🔍 Data Extraction & Filtering
* `vyberDataMesiac`: Extracts data for a specific month.
* `vyberDataDen`: Filters data for a selected day.
* `vybratOdDo`: Allows custom date range selection.

### 📈 Monthly & Daily Statistics
* **Average Temperature:** Calculation for any selected month.
* **Hottest Day Analysis:** Identified based on the 10 warmest hours.
* **Advanced Sorting:** Ranking days by Sunniness (Solar Radiation), Humidity, and Wind Speed using custom sorting logic.
* **Peak Values:** Identification of the hottest and sunniest hours within a day.

### 📊 Professional Visualizations
* **Temperature Profiles:** Dynamic plots with peak markers.
* **Wind & Humidity:** Bar charts showing hourly averages.
* **Atmospheric Pressure:** Line graphs tracking 24-hour fluctuations.
* **Wind Direction:** Specialized vector/direction analysis.

## 🛠 Technical Implementation
* **Language:** MATLAB
* **UI:** Centralized `MENU.m` script for easy navigation.
* **Algorithms:** Custom sorting and search algorithms as per academic requirements.

## 📁 Files included
* All `.m` function files.
* `Semestrálna Práca.docx`: Detailed technical report (Slovak).
* `zadanieSemestralnejPrace.pdf`: The original assignment requirements.

---
*Developed as a semester project for the Faculty of Electrical Engineering and Information Technology (FEIT), University of Žilina.*
