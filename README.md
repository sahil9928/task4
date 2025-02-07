# task4
COMPANY:CODTECH IT SOLUTIONS NAME:SAHIL ROMHARSHAN KALE INTERN ID:CT08PNP DOMAIN:SQL DURATION:JANUARY 25TH,2025 TO FEBRUARY 25TH,2025. MENTOR:NEELA SANTHOSH KUMAR
DISCRIPTION:Database Backup and Recovery are critical components of any data management strategy. SQL databases like Microsoft SQL Server, MySQL, PostgreSQL, and Oracle provide various mechanisms for creating and restoring database backups to ensure data integrity, availability, and disaster recovery.

1. Database Backup
A backup is the process of creating a copy of the database, which can be used to restore the database in the event of a failure. There are several types of backups, each serving different purposes:

a. Full Backup:

A full backup captures the entire database, including all tables, indexes, stored procedures, and data.
It is the most comprehensive backup and the basis for other types of backups.
It is a complete snapshot of the database at a specific point in time.
b. Differential Backup:

A differential backup only captures the changes made to the database since the last full backup.
It is smaller and faster than a full backup but requires a full backup as a base.
The recovery process involves restoring the full backup and then applying the differential backup.
c. Transaction Log Backup:

This type of backup records all transactions that have occurred in the database since the last log backup.
Transaction log backups are essential for point-in-time recovery, allowing you to restore the database to a specific moment.
They help maintain database consistency and prevent data loss.
d. Incremental Backup (in some systems):

An incremental backup captures only the changes made to the database since the last backup (whether full or incremental).
Unlike differential backups, incremental backups are based on the last incremental backup, not the full backup.
2. Database Recovery
Database recovery is the process of restoring data from backups and bringing the database back to its operational state after a failure, corruption, or accidental data loss.

a. Recovery Process:

Restore from Full Backup: This is the first step in recovery. The most recent full backup is restored first.
Apply Differential Backups (if applicable): After restoring the full backup, any differential backups taken after the full backup are applied.
Apply Transaction Log Backups: Transaction logs are applied in sequence to bring the database up to the exact point of failure or the desired recovery point.
Point-in-Time Recovery: This type of recovery restores the database to a specific moment, useful for scenarios like accidental data deletion or corruption.
b. Recovery Models (SQL Server Specific):

Full Recovery Model: Ensures that every transaction is logged and allows for point-in-time recovery. Requires transaction log backups.
Simple Recovery Model: Does not keep transaction logs after the transaction is committed, meaning point-in-time recovery is not possible. Suitable for smaller or less critical databases.
Bulk-Logged Recovery Model: Similar to full recovery but allows for minimal logging of bulk operations, providing a balance between performance and recoverability.
c. Automated Backup and Restore:

Many database management systems (DBMS) offer built-in tools or utilities to automate the backup and restore process.
SQL Server, for example, has the SQL Server Management Studio (SSMS) and T-SQL commands for scheduling and automating backups.
d. Backup and Recovery Best Practices:

Schedule Regular Backups: Ensure that backups are taken regularly, based on the size and importance of the database. A full backup is usually done weekly, with differential and transaction log backups taken more frequently.
Test Backups: Regularly test backup restoration to ensure data can be recovered successfully.
Offsite Backups: Keep backup copies offsite (or in the cloud) to protect against disasters like fire or theft.
Backup Encryption: Ensure backups are encrypted, especially when sensitive data is involved.
