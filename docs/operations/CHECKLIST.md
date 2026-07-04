# Security Checklist

Version: 1.0.0

Status: Approved

---

## Purpose

This checklist verifies implementation of the AI Security Playbook.

It is not a replacement for the policy documents.

---

## Scope

This checklist applies to projects that adopt the AI Security Playbook.

It verifies implementation.

It does not define security requirements.

---

## Baseline Compliance Verification

Reference: [Security Baseline](../policy/SECURITY_BASELINE.md)

### Critical

□ No secrets are committed to source repositories.

□ Protected assets are identified and access to them is restricted.

□ AI agent access follows least privilege and need-to-know principles.

□ AI agent context is limited to task-relevant files.

□ Sensitive shell actions require explicit human approval.

□ Runtime secrets are preferred over secrets stored in source-controlled files.

□ Environment example files contain placeholders only.

□ No real secrets, tokens, credentials, or private endpoints appear in examples.

### Required

□ Project-specific security decisions are documented.

□ File access expectations are clear enough for developers and AI agents to follow.

□ Agent permission expectations are clear enough for developers and AI agents to follow.

---

## Related Documents

- [Security Baseline](../policy/SECURITY_BASELINE.md)
- [File Access Policy](../policy/FILE_ACCESS_POLICY.md)
- [Agent Permissions](../policy/AGENT_PERMISSIONS.md)
- [Secrets Management](../policy/SECRETS_MANAGEMENT.md)
- [Runtime Secrets](../guidance/RUNTIME_SECRETS.md)
- [Secure Application Startup](../guidance/SECURE_APPLICATION_STARTUP.md)
- [Project Adaptation](../guidance/PROJECT_ADAPTATION.md)

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
