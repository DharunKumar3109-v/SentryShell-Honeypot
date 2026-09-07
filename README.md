# SentryShell Honeypot

SentryShell is an SSH honeypot project designed to capture and analyze suspicious SSH activity in a controlled lab environment. The project demonstrates practical SOC concepts such as honeypot deployment, authentication monitoring, command logging, log analysis, and SIEM-oriented security monitoring.

## Project Objective

The objective of SentryShell is to create a controlled SSH environment that can attract or simulate attacker activity and record useful telemetry for security analysis.

## Architecture

```text
Attacker / Test Machine
        |
        | SSH
        v
+----------------------+
| SentryShell Honeypot |
|       Cowrie         |
+----------------------+
        |
        | JSON / Event Logs
        v
+----------------------+
| Log Analysis / SIEM  |
|   ELK / Splunk*      |
+----------------------+
        |
        v
 Detection & Investigation
```

> *SIEM integration can be adapted to the environment. Do not claim an integration was deployed unless it was actually configured.

## Technologies

- Linux (Kali/Debian lab environment)
- Cowrie SSH Honeypot
- SSH
- tcpdump / Wireshark
- JSON logging
- ELK / SIEM concepts
- VMware virtualization

## Key Security Use Cases

- Detect repeated SSH login attempts
- Identify brute-force behavior
- Capture attacker usernames and commands
- Analyze source IP and session activity
- Investigate suspicious shell commands
- Correlate network traffic with honeypot events
- Generate SOC-style investigation findings

## Lab Setup

This repository contains safe example configuration and documentation. Replace example values with your own lab values.

### Basic Cowrie workflow

1. Prepare a Linux VM.
2. Install Cowrie and its dependencies.
3. Configure the SSH honeypot.
4. Start Cowrie.
5. Generate controlled test SSH activity from another lab machine.
6. Review Cowrie JSON logs.
7. Analyze events for suspicious behavior.
8. Forward sanitized logs to a SIEM if required.

See [`docs/setup-guide.md`](docs/setup-guide.md).

## Example Investigation

A SOC analyst can investigate an SSH event using:

- Source IP
- Destination IP
- Destination port
- Username attempted
- Authentication result
- Session ID
- Commands executed
- Timestamp
- Downloaded files or URLs, if captured
- Number and frequency of attempts

See [`detection/attack-detection.md`](detection/attack-detection.md).

## Repository Structure

```text
config/       Example configuration
detection/    Detection and investigation notes
docs/         Architecture and setup documentation
scripts/      Helper scripts
sample-logs/  Sanitized example log format
```

## Security Notice

This project is intended for authorized security research and isolated lab environments only. Do not deploy a honeypot on a network or system without permission.

Never commit:

- Passwords
- API keys
- Private keys
- Real credentials
- Sensitive production logs
- Personal data
- VM disk images

## Future Improvements

- Automated alert generation
- MITRE ATT&CK technique mapping
- SIEM dashboards
- Automated IP reputation enrichment
- File/download analysis
- Behavioral detection rules
- SOAR-based response workflows

## Author

**Dharun Kumar**

Cybersecurity | SOC Analyst Portfolio
