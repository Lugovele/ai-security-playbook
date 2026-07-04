# Security Checklist

Version: 1.0

Status: Approved

---

## Purpose

This checklist verifies implementation of the AI Security Knowledge Base.

It is not a replacement for the policy documents.

---

## Scope

This checklist applies to projects that adopt the AI Security Knowledge Base.

It verifies implementation.

It does not define security requirements.

---

## Related Documents

- ../policy/SECURITY_BASELINE.md
- ../policy/FILE_ACCESS_POLICY.md
- ../policy/AGENT_PERMISSIONS.md
- ../policy/SECRETS_MANAGEMENT.md
- ../guidance/RUNTIME_SECRETS.md
- ../guidance/SECURE_APPLICATION_STARTUP.md
- ../guidance/PROJECT_ADAPTATION.md

---

## Recommended Review Triggers

- new project
- architecture change
- runtime change
- AI workflow change
- secret handling change
- periodic security review

---

## Project Initialization

Reference: ../guidance/PROJECT_ADAPTATION.md

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

Reference: ../policy/FILE_ACCESS_POLICY.md

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

Reference: ../policy/AGENT_PERMISSIONS.md

### Critical

□ Restricted operations documented.

### Required

□ Permission model documented.

□ Approval-required operations documented.

### Project Specific

□ Project-specific permissions documented.

---

## Secrets

Reference: ../policy/SECRETS_MANAGEMENT.md

### Critical

□ No secrets committed to source control.

### Required

□ Secret lifecycle documented.

### Project Specific

□ Secret rotation documented.

□ Secret retirement documented.

---

## Runtime

Reference: ../guidance/RUNTIME_SECRETS.md

### Critical

□ Runtime secret handling implemented.

### Required

□ Runtime secret handling conforms to ../guidance/RUNTIME_SECRETS.md.

### Project Specific

□ Runtime failure behavior documented.

□ Runtime cleanup documented.

---

## Startup

Reference: ../guidance/SECURE_APPLICATION_STARTUP.md

### Critical

□ Startup mechanism implemented.

### Required

□ Startup mechanism conforms to ../guidance/SECURE_APPLICATION_STARTUP.md.

□ Startup validation implemented.

### Project Specific

□ Cleanup coordination documented.

---

## Project Adaptation

Reference: ../guidance/PROJECT_ADAPTATION.md

### Critical

□ Architecture documented in project adaptation.

### Required

□ Baseline deviations documented.

□ Deviation rationale documented.

### Project Specific

□ Project examples match the adaptation.

---

## Periodic Review

Reference: CHECKLIST.md

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

Checklist completion supports engineering review but does not replace engineering judgment.