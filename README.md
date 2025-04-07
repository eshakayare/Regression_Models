# Regression_Models
# ✈️ Airfare Prediction Using Regression Models  

## 📝 Overview

This project presents a comprehensive analysis of airfare prediction using historical flight data from 1996–1997. We compare different regression modeling approaches to estimate airfare prices between city pairs, with a key focus on the impact of **Southwest Airlines' presence** on fare levels. The analysis leverages **Excel (Analytic Solver)**, **R Programming**, and **SAP Predictive Analysis**.

---

## 💼 Business Problem

> **How do different factors—especially the presence of low-cost carriers like Southwest Airlines—affect airfare prices?**  
> Can we build accurate predictive models to assist stakeholders in anticipating pricing changes due to competition, airport infrastructure developments, and market conditions?

---

## 🎯 Objectives

- Predict airfare (FARE) between city pairs using regression models  
- Analyze the impact of variables such as distance, population, income, vacation travel, and airline presence  
- Evaluate and compare model performance using statistical metrics  
- Provide strategic recommendations to aviation stakeholders

---

## 📊 Tools & Techniques

| Tool                 | Model Used                    | Key Insight                                      |
|----------------------|-------------------------------|--------------------------------------------------|
| **Excel** (Solver)   | Decision Tree                 | Clear variable importance and decision logic     |
| **R Programming**    | Linear Regression + Stepwise  | Strongest statistical fit (R² ≈ 0.78)            |
| **SAP Predictive**   | Auto Feature Selection        | High prediction confidence (95.59%)              |

---

## 🔍 Key Variables & Feature Importance
- **Most Important Predictors**:  
  - `Distance` (~26.4%)  
  - `SW` (Southwest presence) (~14.5%)  
  - `Coupon` (number of segments)  
  - `Vacation` trips  

- **Effect of Southwest Airlines**:  
  - Presence reduces fares by **~54%**  
  - Absence increases predicted fares by **~54%**

---

## 📈 Model Performance

### 📊 R-based Linear Regression
- **R²**: 0.7846  
- **RMSE**: $37.25  
- **MAPE**: 22.5%  
- **Interpretability**: Strong; supports strategic planning

### 📉 Excel Decision Tree
- **R²**: 0.637  
- **RMSE**: $45.59  
- **MAD**: $32.66  
- **Feature Visualization**: Simple rule-based prediction

### ⚙️ SAP Model
- **Confidence**: 95.59%  
- **RMSE**: $25.49  
- **Top Features**: Distance, SW, Vacation, Coupon  
- Feature importance adjusts dynamically based on distance ranges

---

## 💡 Regression Equation (R Model Output)
Fare = 21.16 - (38.64 * VacationYes) - (42.13 * SWYes) + (0.00788 * HI) + (0.0012 * S_Income) + (0.0013 * E_Income) + (0.000003 * S_Pop) + (0.000004 * E_Pop) - (15.77 * SLOTFree) - (20.55 * GATEFree) + (0.07186 * Distance) - (0.00087 * PAX)

---

## 🧠 Business Takeaways

- **Southwest Airlines** reduces fare prices through competitive pressure  
- **Distance and Coupon** are the strongest predictors of airfare  
- **Vacation travel, free gates/slots, and high passenger volume** help lower fares  
- Use these models to simulate the impact of airline entry/exit or infrastructure changes

---
📌 Conclusion
The project successfully demonstrates how multiple modeling tools can be applied to airfare prediction and confirms the significant role Southwest Airlines plays in driving down prices. The comparison of tools shows that each contributes unique value:

* Excel offers interpretability

* R provides robust metrics and statistical validation

* SAP delivers automated insights and confidence scoring

* This multi-model approach gives aviation stakeholders the tools needed to make informed, data-driven decisions.
