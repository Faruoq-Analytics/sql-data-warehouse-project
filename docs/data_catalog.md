# Data Catalog

## Overview

The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. it consists of **dimension tables** and **fact tables**
________________________________________________________________________________________________________________________

## 1. gold.dim_customers

**Purpose:** Stores customer details enriched with demographic and geographic data.
**Columns:**

| Column Name | Data Type | Description |
|---|---|---|
| VesselID | INT | Unique identifier for each vessel. |
| VesselName | VARCHAR(100) | Name of the vessel. |
| VesselType | VARCHAR(50) | Type or category of the vessel. |
| IMO_Number | VARCHAR(20) | International Maritime Organization number assigned to the vessel. |

---

## 2. Berth

**Purpose:** Stores information about berths available in the port.

### Columns

| Column Name | Data Type | Description |
|---|---|---|
| BerthID | INT | Unique identifier for each berth. |
| BerthCode | VARCHAR(20) | Code used to identify the berth. |
| BerthName | VARCHAR(100) | Name or description of the berth. |

---

## 3. VesselCall

**Purpose:** Stores information about vessel visits to the port, including expected and actual arrival and departure times.

### Columns

| Column Name | Data Type | Description |
|---|---|---|
| VesselCallID | INT | Unique identifier for each vessel call. |
| VoyageNumber | VARCHAR(50) | Identifier assigned to the vessel voyage. |
| VesselID | INT | Identifies the vessel associated with the call. |
| BerthID | INT | Identifies the berth assigned to the vessel. |
| ETA | DATETIME | Expected time of arrival. |
| ATA | DATETIME | Actual time of arrival. |
| ETD | DATETIME | Expected time of departure. |
| ATD | DATETIME | Actual time of departure. |
