-- Gathering full statistics for optimizer
BEGIN
  dbms_stats.gather_schema_stats(ownname          => 'EA',
                                 estimate_percent => 100,
                                 granularity      => 'ALL',
                                 degree           => 8,
                                 method_opt       => 'FOR ALL COLUMNS',
                                 options          => 'GATHER');
END;
/
