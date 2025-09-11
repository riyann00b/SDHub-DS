# Copilot Instructions for testQL

## Project Overview
This repository contains a set of SQL scripts (`01-SQL.sql`, `02-SQL.sql`, `03-SQL.sql`) for database operations, likely for learning, testing, or batch execution purposes. There is no application code or build system present.

## Architecture & Data Flow
- The codebase is flat, consisting only of SQL files. There are no submodules, services, or application logic.
- Each `.sql` file is self-contained. If there is a logical order, it is implied by the file naming (e.g., `01-SQL.sql` runs before `02-SQL.sql`).
- No cross-file dependencies or shared variables.

## Developer Workflows
- **Execution:** Run SQL files directly against your target database (e.g., using `psql`, `sqlite3`, `mysql`, etc.).
  - Example: `sqlite3 mydb.sqlite < 01-SQL.sql`
- **No build/test automation:** There are no scripts or configuration files for automated builds or tests.
- **Debugging:** Debug by running SQL files and inspecting database state manually.

## Project-Specific Conventions
- File naming uses a numeric prefix to indicate execution order.
- All logic is in SQL; no other languages or frameworks are present.
- No external dependencies or integrations.

## Patterns & Examples
- Each SQL file should be atomic and runnable independently.
- If you add new SQL files, follow the numeric prefix convention (e.g., `04-SQL.sql`).
- Example SQL file usage:
  ```sh
  sqlite3 mydb.sqlite < 02-SQL.sql
  ```

## Key Files
- `01-SQL.sql`, `02-SQL.sql`, `03-SQL.sql`: Main SQL scripts. Review these for schema, data manipulation, and ordering.

## Guidance for AI Agents
- Focus on generating, updating, or analyzing SQL scripts.
- Maintain the numeric prefix convention for new files.
- Document any new workflow or convention in this file.
- If project structure changes (e.g., adding app code), update this document to reflect new patterns.

---

If any section is unclear or incomplete, please provide feedback to improve these instructions.
