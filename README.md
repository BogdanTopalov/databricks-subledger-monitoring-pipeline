# Databricks Subledger Monitoring & Incident Runbook

This project simulates a production-style subledger monitoring workflow
implemented in Databricks using Python, SQL, and Delta tables.

## My Approach
I split the workflow into three Databricks notebooks representing setup, computation, and validation layers. 
I orchestrated them using Databricks Jobs with task dependencies to simulate a production subledger pipeline with monitoring and incident logging.

```
databricks-subledger-monitoring-pipeline/
├── notebooks/
│   ├── 01_setup_tables.py
│   ├── 02_compute_subledger.py
│   └── 03_validation_checks.py
├── sql/
│   └── investigation_queries.sql
├── RUNBOOK.md
├── README.md
```

![alt]()

## What it does
- Aggregates daily subledger balances
- Runs data quality and reconciliation checks
- Logs incidents for support investigation
- Provides a clear operational runbook

## Why it matters
This mirrors real financial data support workflows where correctness,
traceability, and fast incident resolution are critical.
