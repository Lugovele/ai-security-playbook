# File Access Policy

Version: 1.0

Status: Approved

---

## Purpose

File access control is important because AI agents can read, index, search, reason over, and modify
large parts of a project faster than a human developer can review them. Without clear boundaries, an
AI agent may receive more information than the task requires or encounter protected assets unrelated
to the work.

This policy defines a reusable approach for deciding what project files and data AI agents may
access during software development. It is intended to minimize unnecessary exposure while preserving
productive engineering workflows.

---

## Scope

This policy applies to all AI agents interacting with project files in an AI-assisted software
development workflow.

It governs reading, indexing, searching, reasoning over, and modifying project files and
project-adjacent data. It applies whether access is requested directly by a developer, inferred by
an AI agent, or performed as part of a development task.

This policy defines file and data access only. It does not define shell permissions, runtime secret
loading, wrapper scripts, secret lifecycle, or project-specific configuration.

---

## Related Documents

- [Security Baseline](SECURITY_BASELINE.md)
- [Agent Permissions](AGENT_PERMISSIONS.md)
- [Secrets Management](SECRETS_MANAGEMENT.md)
- [Project Adaptation](../guidance/PROJECT_ADAPTATION.md)

---

## File Classification

Project resources should be classified before they are exposed to AI agents. The classification
determines the default access posture and the level of approval required.

### Public

Public resources include README files, documentation, public specifications, configuration
templates, and example files.

These files are normally safe for unrestricted AI agent access because they are intended to be
shared, reviewed, reused, or distributed without exposing protected assets. Public refers to the
default AI access level within the development environment; it does not necessarily mean the
information is publicly available outside the project or organization.

---

### Internal

Internal resources include application source code, tests, build configuration, CI configuration,
and migration scripts.

These files are generally accessible to AI agents when required for the current task. Internal files
may still contain sensitive logic or operational assumptions, so access should remain tied to the
work being performed.

---

### Protected

Protected resources include environment files, private configuration, deployment configuration,
credentials, private certificates, SSH configuration, database dumps, logs containing sensitive
information, and secret stores.

Access to protected resources requires explicit developer approval. These files may contain or
reveal protected assets such as secrets, credentials, authentication material, cryptographic
material, sensitive configuration, or sensitive data.

---

### Restricted

Restricted resources include password managers, private keys, authentication material, production
secrets, customer exports, and personal data.

Restricted resources should remain inaccessible during normal AI-assisted development. Access is
permitted only when it is explicitly required by the task and the developer intentionally grants
approval. Restricted resources represent the highest-risk access category and should remain outside
normal AI agent context.

---

## Access Principles

File access decisions should be based on the task being performed and the classification of the
resources involved.

Least Privilege means the AI agent should receive only the file access necessary to complete the
requested task.

Need-to-Know means the AI agent should inspect only resources that are relevant to the current work.

Explicit approval is required before an AI agent accesses protected resources, restricted resources,
or files whose classification is unclear.

Minimal context means developers should prefer narrow file access over broad project access when the
task can be completed with fewer files.

AI agents should receive only the information necessary to complete the requested task.

---

## Default Access Policy

| Classification | Default AI Agent Access |
| --- | --- |
| Public | Allowed |
| Internal | Allowed when required |
| Protected | Approval required |
| Restricted | Denied unless explicitly authorized |

---

## Context Minimization

Developers should expose the minimum amount of project information necessary for the AI agent to
complete the task.

Minimizing context reduces the chance of accidental disclosure, limits unnecessary reasoning over
protected assets, and makes it easier to understand what information influenced the AI agent’s
output. It also reduces the risk that unrelated files, logs, configuration values, or sensitive data
become part of generated code, documentation, summaries, or recommendations.

---

## Project Adaptation

Every project should review and document its own protected files, restricted files, additional
sensitive resources, and technology-specific assets.

Project adaptation should identify resources that require approval, resources that should normally
remain inaccessible, and resources whose classification depends on the project’s architecture or
data sensitivity.

Projects may assign stricter classifications than those defined by the default policy. As projects
evolve, new technologies, storage mechanisms, or sensitive resources may require reclassification.
The default classification is a baseline, not a limitation.

Project-specific decisions belong in ../guidance/PROJECT_ADAPTATION.md.

---

## Related Examples

Implementation examples belong in the examples/ directory.

This document defines policy only and does not include implementation examples.

