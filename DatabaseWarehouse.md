A **data warehouse** is a centralized repository designed for storing, integrating, and analyzing large volumes of data from multiple sources. It is optimized for **analytical processing** rather than transactional operations.

### **Key Characteristics of a Data Warehouse:**
1. **Subject-Oriented** – Organized around key business areas (e.g., sales, finance, customer behavior).
2. **Integrated** – Consolidates data from multiple sources (databases, logs, APIs, etc.).
3. **Time-Variant** – Maintains historical data for trend analysis.
4. **Non-Volatile** – Data is read-only for analysis; it doesn’t change frequently.

### **How It Differs from a Regular Database:**
| Feature | Operational Database (OLTP) | Data Warehouse (OLAP) |
|---------|----------------|-----------------|
| Purpose | Handles transactions | Supports analysis and reporting |
| Data Type | Current, real-time | Historical, aggregated |
| Normalization | Highly normalized (avoids redundancy) | Denormalized (improves query speed) |
| Query Type | Short, frequent transactions | Complex queries for decision-making |
| Performance | Optimized for rapid inserts/updates | Optimized for read-heavy analytics |

### **Common Data Warehouse Architectures:**
1. **Traditional Data Warehouse** (e.g., Amazon Redshift, Microsoft SQL Server Data Warehouse)
2. **Cloud Data Warehouse** (e.g., Snowflake, Google BigQuery, Azure Synapse Analytics)
3. **Data Lakehouse** (hybrid of data lakes and warehouses, e.g., Databricks, Apache Iceberg)

