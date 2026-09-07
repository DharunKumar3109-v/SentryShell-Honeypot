# SentryShell Architecture

## Data Flow

```text
SSH Client
    |
    v
Cowrie SSH Honeypot
    |
    +--> Authentication Events
    +--> Commands
    +--> Session Information
    +--> Network/File Activity
    |
    v
JSON Logs
    |
    v
Log Analysis / SIEM
    |
    v
SOC Detection
    |
    v
Investigation and Response
```

## Components

### Cowrie
Cowrie is the SSH/Telnet honeypot component responsible for emulating an SSH environment and recording session activity.

### Logging
Events can be stored as structured JSON, making them suitable for parsing and SIEM ingestion.

### SIEM
Sanitized honeypot events can be forwarded to a SIEM for searching, correlation, dashboards, and alerting.

## Security Boundary

The honeypot should run inside an isolated and controlled lab environment. Network access should be deliberately restricted and monitored.
