# Secrets Management

Version: 1.0.0

Status: Approved

---

## Purpose

Secret management is critical for AI-assisted development because secrets are among the
highest-value protected assets in a project. If exposed, they can grant unauthorized access to
systems, data, services, infrastructure, or developer environments.

This document defines a reusable policy for handling secrets across their full lifecycle. The goal
is to reduce accidental disclosure while keeping development practical and compatible with
AI-assisted workflows.

---

## Scope

This document governs the creation, storage, usage, rotation, replacement, retirement, and removal
of development secrets.

It applies to secrets used in local development, test environments, automation workflows,
integration work, and AI-assisted software development tasks.

Production secret management systems, enterprise secret governance, and organization-specific
operational controls are outside the scope of this reusable baseline.

---

## Related Documents

- [Security Baseline](SECURITY_BASELINE.md)
- [File Access Policy](FILE_ACCESS_POLICY.md)
- [Agent Permissions](AGENT_PERMISSIONS.md)
- [Runtime Secrets](../guidance/RUNTIME_SECRETS.md)
- [Project Adaptation](../guidance/PROJECT_ADAPTATION.md)

---

## Secret Definition

A secret is any value or artifact whose disclosure could create unauthorized access, impersonation,
privilege escalation, data exposure, or compromise of a protected system.

Secrets include API keys, passwords, tokens, private keys, certificates, signing material,
encryption keys, service credentials, database credentials, OAuth credentials, and machine
credentials.

If disclosure of a value could grant access or weaken a security boundary, it should be treated as a
secret.

---

## Secret Lifecycle

Creation is the point at which a secret is generated, issued, assigned, or otherwise made available
for use.

Storage is the way a secret is retained while it remains active. Storage should preserve
confidentiality and keep secrets separate from reusable project files.

Usage is the controlled use of a secret for a development, automation, authentication, integration,
or testing purpose.

Rotation is the planned or event-driven replacement of an active secret with a new one.

Replacement is the process of updating dependent systems, environments, or workflows to use the new
secret.

Retirement is the decision that an old secret is no longer needed and should no longer be usable.

Removal is the deletion or elimination of obsolete secret material from places where it is no longer
required.

---

## Secret Storage Principles

Secrets must not be hardcoded in source code, documentation, tests, or reusable project assets.

Secrets must not be committed to source control.

Secrets should remain outside reusable project files.

Secrets should be isolated from application code and treated as protected assets.

Secrets should be accessible only when required for an approved development task or workflow.

Storage decisions should preserve separation between source code, configuration examples, local
developer state, and operational credentials.

---

## Secret Exposure Risks

Source repositories are risky because committed secrets can be copied, synchronized, reviewed,
indexed, or retained long after removal.

Chat prompts are risky because secrets shared for context may be stored, summarized, reused, or
exposed to unrelated AI-assisted tasks.

Logs are risky because secrets may appear in error output, debug traces, request data, or generated
diagnostics.

Terminal history is risky because commands and arguments may retain secret values after the task is
complete.

Screenshots are risky because visible secrets may be captured alongside otherwise harmless
development context.

Documentation is risky because copied examples, troubleshooting notes, or setup instructions may
accidentally include real secret values.

Configuration examples are risky because they are often reused, committed, shared, or copied into
new environments.

Test data is risky because it may be treated as safe even when it contains real credentials, tokens,
or private values.

Generated output is risky because an AI agent may reproduce secret values in code, summaries,
comments, tests, or documentation.

Temporary files are risky because they may persist after use, be indexed by tools, or be included in
later project context.

Clipboard contents are risky because copied secrets may be pasted into the wrong destination or
remain available longer than intended.

---

## AI Agent Rules

AI agents should not inspect secrets unless access is explicitly required for the current task and
explicitly approved by the developer.

Secrets should not be shared with an AI agent merely to provide additional context.

Developers should minimize secret exposure when working with AI agents.

Secrets should never be exposed to unrelated AI-assisted tasks.

AI agents should treat secrets as protected assets and avoid reproducing them in generated output.

---

## Secret Rotation

Secrets should be rotated when disclosure is suspected, when a repository exposure occurs, when
personnel or ownership changes, when an environment is migrated, when credential compromise is
suspected or confirmed, or when scheduled rotation is required.

Rotation should also be considered when a secret has been shared more broadly than necessary,
exposed to an AI agent unnecessarily, copied into an unsafe location, or used outside its intended
environment.

Projects may define additional rotation requirements based on sensitivity, environment, regulatory
expectations, operational risk, or team workflow.

---

## Secret Retirement

Obsolete secrets should be replaced, revoked, removed, verified, and documented.

Replacement ensures that active workflows no longer depend on the obsolete secret.

Revocation ensures that the old secret can no longer be used.

Removal reduces the number of places where obsolete secret material may remain exposed.

Verification confirms that dependent systems continue to work without the retired secret and that
the old secret no longer grants access.

Documentation records the reason for retirement and the expected ownership of any replacement
secret.

---

## Secret Handling Principles

Least Exposure means secrets should be shown, copied, stored, or transmitted as little as possible.

Need-to-Know means only people, systems, workflows, and AI agents with an approved need should
interact with a secret.

Separation of Secrets means secrets should be kept separate from source code, reusable
configuration, generated documentation, and general development context.

Human Accountability means developers remain responsible for deciding when secrets may be created,
shared, rotated, replaced, retired, or removed.

Temporary Availability means secrets should be available only for the period and purpose required by
the task.

Recovery Readiness means projects should be prepared to rotate or revoke secrets quickly when
exposure or compromise is suspected.

---

## Project Adaptation

Every project should document its secret types, storage mechanisms, rotation policy, ownership
model, and environment separation.

Project adaptation should identify which secrets exist, who owns them, how they are separated by
environment, when they should rotate, and what actions are required when exposure is suspected.

Project-specific secret management decisions belong in ../guidance/PROJECT_ADAPTATION.md.

---

## Related Examples

Implementation examples belong in examples/.

Implementation examples must not appear in this document.
