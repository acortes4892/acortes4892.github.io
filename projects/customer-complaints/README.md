# Utility Customer Complaints & Service Reliability Analysis (2023–2024)

## Executive Summary
An end-to-end operational and quality-control analysis of **716 utility customer complaints** recorded across 2023 and 2024. The objective was to evaluate year-over-year service reliability, isolate root causes behind seasonal complaint surges, identify regional performance disparities, and establish data-driven operational interventions.

### Key Analytical Findings
* **Overall Volume Reduction (-33.87% YoY):** Total complaints dropped substantially from 2023 to 2024, driven primarily by major declines in billing and collection-related grievances.
* **Weather-Driven Outage Spike (July 2024):** While routine administrative complaints fell, service reliability complaints spiked sharply in July 2024 due to severe weather events impacting grid infrastructure.
* **Regional Distribution:** Complaint density and root causes varied distinctly across the **West, East, and Central** operating regions, highlighting localized grid vulnerabilities versus billing communication bottlenecks.

---

## Repository Contents
* **`cleaned_complaints_data.xlsx`** — Standardized and validated dataset (716 records) with normalized timestamps, standardized categorical labels, and calculated resolution metrics.
* **`customer_complaints_presentation.pptx`** — 10-slide executive presentation deck featuring YoY trend charts, regional breakdowns, and strategic recommendations.
* **`executive_summary.pdf`** — Comprehensive written report detailing dataset scope, methodology, key findings, and business impact.
* **`data_cleaning_log.pdf`** — Step-by-step audit trail documenting anomaly detection, missing value remediation, standardization rules, and quality-control verification checks.

---

## Methodology & Data Hygiene
1. **Data Auditing & Standardization:** Audited raw complaint logs for duplicate entries, inconsistent regional/category naming conventions, and malformed date fields.
2. **Feature Engineering:** Derived year-over-year variance metrics, regional complaint proportions, and monthly seasonality indicators to separate systemic operational improvements from isolated weather events.
3. **Visualization & Storytelling:** Built executive-ready charts in Google Sheets/Excel and synthesized findings into a structured 10-slide leadership presentation.

---

## Strategic Recommendations
* **Grid Resilience & Feeder Automation:** Prioritize automated feeder switching and vegetation management in high-impact weather corridors (particularly regions driving the July 2024 outage spike) to isolate faults and accelerate restoration times.
* **Proactive Smart Meter Outage Notifications:** Implement automated SMS/email alerts triggered by smart meter telemetry to keep customers informed during severe weather events, reducing inbound call center volume and frustration-driven complaints.
* **Targeted Billing & Communication Audits:** Replicate the 2024 billing dispute reduction playbook across underperforming service tiers to sustain downward administrative complaint trends.
