# SentryShell Setup Guide

This is a high-level lab guide. Exact Cowrie installation steps can change between releases, so verify commands against the Cowrie documentation for the version being used.

## 1. Prepare a Linux VM

Recommended lab components:

- Kali Linux or Debian
- VMware/VirtualBox
- Separate test machine or VM
- Controlled network

## 2. Install Cowrie

Clone or install Cowrie according to the official project instructions.

Example workflow:

```bash
git clone https://github.com/cowrie/cowrie.git
cd cowrie
```

Create and activate the Python virtual environment according to the Cowrie version you use.

## 3. Configure

Copy the example configuration and customize only for your isolated lab.

```bash
cp etc/cowrie.cfg.dist etc/cowrie.cfg
```

Do not commit secrets or real credentials.

## 4. Start the Honeypot

Use Cowrie's documented startup method for your installed version.

Verify that the process is running and review the logs.

## 5. Generate Controlled Test Activity

From an authorized test machine, perform benign SSH connection attempts against the honeypot.

Examples of observations to record:

- Source IP
- Username
- Authentication result
- Timestamp
- Session ID
- Commands entered

## 6. Analyze Logs

Cowrie commonly produces structured JSON events. Use the included example log as a reference.

```bash
cat sample-logs/cowrie.json.example
```

## 7. SIEM Integration

If integrating with a SIEM:

1. Collect only sanitized lab logs.
2. Configure the appropriate log forwarder.
3. Assign a suitable sourcetype/parser.
4. Verify field extraction.
5. Build searches for authentication failures and suspicious commands.
6. Create alerts and dashboards.

## 8. Validation Checklist

- [ ] Cowrie starts successfully
- [ ] SSH test connection reaches the honeypot
- [ ] Authentication activity is logged
- [ ] Commands are logged
- [ ] Logs contain timestamps/session identifiers
- [ ] SIEM ingestion works, if configured
- [ ] Sensitive information is removed before publishing
