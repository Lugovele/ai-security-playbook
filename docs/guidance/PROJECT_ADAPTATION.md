# Project Adaptation

Version: 1.0

Status: Approved

---

## Purpose

Reusable security guidance still requires project-specific adaptation because every software project
has its own architecture, data sensitivity, development workflow, runtime model, and technology
stack.

This document defines a repeatable procedure for applying the shared AI Security Playbook to a
specific project while keeping project-specific decisions explicit and reviewable.

---

## Scope

This document applies when introducing this security package into a new software project or
reviewing an existing project against the package.

It does not redefine security policy. It explains how to apply existing policy documents to a
project-specific context.

---

## Related Documents

- [Security Baseline](../policy/SECURITY_BASELINE.md)
- [File Access Policy](../policy/FILE_ACCESS_POLICY.md)
- [Agent Permissions](../policy/AGENT_PERMISSIONS.md)
- [Secrets Management](../policy/SECRETS_MANAGEMENT.md)
- [Runtime Secrets](RUNTIME_SECRETS.md)
- [Secure Application Startup](SECURE_APPLICATION_STARTUP.md)
- [Security Checklist](../operations/CHECKLIST.md)

---

## Adaptation Objectives

Adaptation should preserve the common baseline while making project-specific decisions explicit.

The objectives are to:

- preserve the common baseline;
- document project-specific exceptions;
- minimize unnecessary divergence;
- keep security decisions explicit.

---

## Adaptation Process

1. Review project architecture.

Understand the project structure, major components, development workflow, runtime model, and places
where AI agents may interact with the project.

2. Identify protected assets.

Identify secrets, credentials, authentication material, cryptographic material, sensitive
configuration, sensitive data, and other resources requiring restricted handling.

3. Determine project trust boundaries.

Identify the trust boundaries between developers, AI agents, protected assets, external systems, and
automation based on the protected assets identified by the project. These trust boundaries should
guide all subsequent adaptation decisions.

4. Classify project resources.

Classify project files and data according to the file access policy so AI agent access expectations
are clear.

5. Define project-specific permissions.

Identify operations that are allowed, approval-required, restricted, or project specific for this
project.

6. Define runtime secret handling.

Document how secrets become available at runtime, how long they remain available, and how exposure
is minimized.

7. Define startup mechanism.

Document the approved startup mechanism, expected startup validation, runtime preparation, and
cleanup coordination.

8. Adapt implementation examples.

Adapt reusable examples to the project where appropriate, while keeping project-specific secrets and
private configuration out of reusable artifacts.

9. Validate security configuration.

Review the completed adaptation against the checklist before considering the project aligned with
the security package.

---

## Project Decisions

Project adaptation should document the project-specific decisions required to apply the shared
security package.

These decisions include protected assets, restricted resources, runtime secret sources, startup
mechanism, environment separation, approval rules, technology-specific implementation, and Ownership
of Security Decisions.

Project decisions should be specific enough that developers and AI agents can understand the
expected boundaries without reinterpreting the baseline each time work begins.

Every project-specific security decision should have clearly identified Ownership of Security
Decisions responsible for maintaining, reviewing, and approving that decision over time. Ownership
should be clear without prescribing organizational roles.

---

## Adaptation Principles

Reuse Before Replace means the project should use the shared baseline and supporting documents
unless there is a clear project-specific reason to adapt them.

Minimal Deviation means project-specific differences should be kept as small as practical.

Consistency Before Convenience means project-specific adaptations should preserve consistency with
the shared security baseline whenever practical. Convenience should not become the primary reason
for diverging from reusable security guidance.

Explicit Decisions means project-specific choices should be documented rather than left implicit in
developer habits or tool behavior.

Document Exceptions means deviations from the shared baseline should be recorded with enough context
to be reviewed later.

Review Changes means project adaptation should be revisited when architecture, tooling, runtime
behavior, data sensitivity, or development workflow changes.

---

## Validation

Before adaptation is considered complete, the project should be reviewed for alignment with the
shared security baseline, file access policy, agent permission model, secret management lifecycle,
runtime secret handling, and secure startup guidance.

Validation should confirm that project-specific decisions are documented, exceptions are explicit,
and implementation examples do not contain protected assets.

../operations/CHECKLIST.md should be used as the final review aid.

Validation should be repeated whenever significant changes occur to the project architecture,
runtime model, deployment model, development workflow, or protected assets.

Validation should also be performed before introducing new AI-assisted development workflows or
significant automation into the project.

---

## Related Examples

Implementation examples are intentionally maintained separately in the examples/ directory.

This document defines the adaptation process rather than implementation examples.
