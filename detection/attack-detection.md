# Attack Detection and Investigation

## 1. SSH Brute Force

### Indicators

- Multiple failed login attempts
- Many usernames from one source
- High frequency of authentication events
- Repeated connections within a short time

### SOC Investigation

Check:

```text
Source IP
Username
Timestamp
Destination
Authentication result
Number of attempts
```

## 2. Suspicious Command Execution

Look for commands related to:

- System discovery
- User discovery
- Network discovery
- Process discovery
- Persistence
- Downloading tools
- Privilege escalation attempts

Do not execute unknown commands from an attacker on a production system.

## 3. Possible Malware Download

Investigate:

- Download URLs
- Destination domains/IPs
- File names
- Hashes, if available
- Session timeline

## 4. Example SOC Workflow

```text
Alert
  |
  v
Triage
  |
  v
Validate source IP + timestamp
  |
  v
Review authentication activity
  |
  v
Review commands/session
  |
  v
Correlate with network/SIEM logs
  |
  v
Determine severity
  |
  v
Contain / block / escalate according to organization procedure
```

## MITRE ATT&CK Mapping

Potential techniques depend on the actual observed activity. Examples may include:

- Account Discovery
- System Information Discovery
- Network Service Scanning
- Command and Scripting Interpreter
- Ingress Tool Transfer

Only map a technique when the observed behavior supports it.
