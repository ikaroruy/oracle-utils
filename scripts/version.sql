SET LINESIZE 300

COLUMN ACTION_TIME FORMAT A19
COLUMN COMMENTS FORMAT A60

SELECT TO_CHAR(ACTION_TIME, 'YYYY-MM-DD HH24:MI:SS') ACTION_DATE,
       ACTION,
       NAMESPACE,
       VERSION,
       ID,
       COMMENTS
FROM   dba_registry_history
ORDER  BY ACTION_TIME DESC;
