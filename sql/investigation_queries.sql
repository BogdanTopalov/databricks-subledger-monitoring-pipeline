-- Open incidents
SELECT *
FROM demo_subledger_monitoring.incident_log
WHERE status = 'OPEN';

-- Reconciliation mismatches
SELECT *
FROM demo_subledger_monitoring.subledger_daily s
JOIN demo_subledger_monitoring.expected_daily_totals e
  ON s.posting_date = e.posting_date
 AND s.account_id = e.account_id
 AND s.currency = e.currency
WHERE s.total_amount <> e.expected_total;

-- Data quality issues
SELECT *
FROM demo_subledger_monitoring.transactions_raw
WHERE transaction_id IS NULL
   OR amount < 0;
