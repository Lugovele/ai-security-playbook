# Security Checklist Template

Version: 1.0

Status: Draft

---

## Project

Project name:

Reviewer:

Review date:

Knowledge base version:

---

## Project Initialization

Reference: ../docs/guidance/PROJECT_ADAPTATION.md

### Critical

□ Project adaptation documented.

□ Protected assets identified.

### Required

□ Trust boundaries documented.

□ Security owners documented.

### Project Specific

□ Exceptions documented.

---

## File Access

Reference: ../docs/policy/FILE_ACCESS_POLICY.md

### Critical

□ Protected resources identified.

□ Restricted resources identified.

### Required

□ Resources classified.

□ AI access boundaries documented.

### Project Specific

□ File access exceptions documented.

---

## Agent Permissions

Reference: ../docs/policy/AGENT_PERMISSIONS.md

### Critical

□ Restricted operations documented.

### Required

□ Permission model documented.

□ Approval-required operations documented.

### Project Specific

□ Project-specific permissions documented.

---

## Secrets

Reference: ../docs/policy/SECRETS_MANAGEMENT.md

### Critical

□ No secrets committed to source control.

### Required

□ Secret lifecycle documented.

### Project Specific

□ Secret rotation documented.

□ Secret retirement documented.

---

## Runtime

Reference: ../docs/guidance/RUNTIME_SECRETS.md

### Critical

□ Runtime secret handling implemented.

### Required

□ Runtime secret handling conforms to ../docs/guidance/RUNTIME_SECRETS.md.

### Project Specific

□ Runtime failure behavior documented.

□ Runtime cleanup documented.

---

## Startup

Reference: ../docs/guidance/SECURE_APPLICATION_STARTUP.md

### Critical

□ Startup mechanism implemented.

### Required

□ Startup mechanism conforms to ../docs/guidance/SECURE_APPLICATION_STARTUP.md.

□ Startup validation implemented.

### Project Specific

□ Cleanup coordination documented.

---

## Project Adaptation

Reference: ../docs/guidance/PROJECT_ADAPTATION.md

### Critical

□ Architecture documented in project adaptation.

### Required

□ Baseline deviations documented.

□ Deviation rationale documented.

### Project Specific

□ Project examples match the adaptation.

---

## Periodic Review

Reference: ../docs/operations/CHECKLIST.md

### Critical

□ Protected asset list current.

### Required

□ AI workflow list current.

□ Security docs current.

### Project Specific

□ Exception list current.

---

## Completion Criteria

□ All applicable checklist items completed.

□ Exceptions documented.

□ Engineering review completed.

□ Final approval recorded.

---

## Final Approval

| Field | Value |
| ----- | ----- |
| Reviewer | |
| Review Date | |
| Knowledge Base Version | |
| Decision | Approved / Approved with Changes / Rejected |
