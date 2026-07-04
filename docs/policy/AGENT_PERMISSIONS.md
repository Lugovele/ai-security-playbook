# Agent Permissions

Version: 1.0

Status: Approved

---

## Purpose

Controlling AI agent permissions is essential because an AI agent can perform actions quickly, at broad scope, and sometimes with consequences that are difficult to review after the fact. Clear permissions reduce unnecessary autonomy while preserving productive software development workflows.

Access to a resource and permission to perform an action are different concerns. An AI agent may be allowed to read or reason about a file under the file access policy, but still require approval before modifying it, executing related commands, changing project structure, or performing actions with side effects.

---

## Scope

This document governs operations performed by AI agents during software development.

It applies regardless of whether an AI agent operates inside an IDE, terminal, CLI, background automation workflow, or other development interface.

This document defines permissions and operations only. It does not define file classification, secret management, runtime security, shell implementation, or project-specific configuration.

---

## Permission Scope

Permissions govern operations performed by AI agents rather than the resources themselves.

Operations include, but are not limited to, reading, creating, modifying, deleting, renaming, executing, communicating with external systems, and changing project configuration.

File accessibility is defined separately in FILE_ACCESS_POLICY.md.

---

## Related Documents

- SECURITY_BASELINE.md
- FILE_ACCESS_POLICY.md
- SECRETS_MANAGEMENT.md
- ../guidance/PROJECT_ADAPTATION.md

---

## Permission Model

Every AI agent operation belongs to one of four permission levels.

Permission levels apply to operations, while resource accessibility is governed separately by FILE_ACCESS_POLICY.md.

Allowed means the operation may normally be performed without additional approval when it is within the requested task and consistent with the file access policy.

Approval Required means the operation may be performed only after the developer explicitly approves it for the current task.

Restricted means the operation should normally remain prohibited because it carries high security, operational, or data-loss risk.

Project Specific means the operation depends on the project’s architecture, technology, data sensitivity, workflow, or risk tolerance and must be defined by project adaptation.

---

## Allowed Operations

Allowed operations are routine development actions that support the requested task and do not normally create sensitive side effects.

Allowed operations include reading resources permitted by FILE_ACCESS_POLICY.md, modifying source code explicitly included within the approved task scope, creating new source files, generating documentation, updating tests, searching project files, performing static analysis, refactoring requested code, and explaining code.

These operations remain limited by FILE_ACCESS_POLICY.md. An operation that is normally allowed does not override file access restrictions, protected assets, restricted resources, or project-specific approval requirements.

---

## Approval Required Operations

Approval required operations are actions that can change the development environment, alter project behavior, affect security posture, or create external side effects.

### Project Operations

Project operations requiring approval include deleting files, renaming files outside the requested scope, changing project structure, bulk file modifications, modifying lock files, editing CI configuration, editing deployment configuration, modifying security configuration, creating or modifying credentials, generating production configuration, running migrations with side effects, and force overwrite operations.

### System Operations

System operations requiring approval include executing shell commands, installing dependencies, and updating dependencies.

### External Operations

External operations requiring approval include performing network operations, accessing protected resources, and sending project information to external services outside the local development environment.

Human approval is required because these actions may affect system state, project integrity, security boundaries, external systems, or data durability. Approval ensures that the developer remains accountable for sensitive or potentially destructive changes.

---

## Restricted Operations

Restricted operations should normally remain prohibited during AI-assisted development.

Restricted operations include accessing secrets without approval, accessing private keys, modifying authentication systems without explicit authorization, publishing packages, deploying to production environments, pushing directly to protected branches, modifying production infrastructure, modifying audit history, modifying approval mechanisms, bypassing approval mechanisms, disabling security controls, executing unknown scripts, and downloading untrusted code without approval.

Exceptions require explicit project-specific authorization. A restricted operation should not be treated as allowed merely because it is technically possible or because an AI agent can perform it.

---

## Permission Principles

Least Privilege means an AI agent should receive only the operational permissions necessary to complete the current task.

Human Approval means sensitive, destructive, external, or security-relevant operations require deliberate developer approval before execution.

Task-Based Permissions means permission should be evaluated in relation to the specific requested task, not granted broadly for unrelated future work.

Explicit Authorization means high-impact actions should be clearly authorized rather than inferred from general task context.

Reversibility means safer operations are those that can be reviewed, reverted, or corrected without damaging protected assets, project integrity, or external systems. Preference should always be given to operations that can be reviewed, reverted, or safely corrected.

---

## Operational Principle

Permission decisions should be based on operation risk, potential impact, reversibility, and required trust level.

Permissions should never be granted solely because an operation is technically possible.

---

## Permission Inheritance

Permissions granted for one operation do not automatically authorize subsequent operations.

Every operation should be evaluated independently. Broader permissions require explicit developer approval, and temporary approval for one task must not become permanent authorization for future tasks.

---

## Escalation

Permissions should increase only when necessary to complete the current task.

Escalation should be temporary, explicit, and limited to the operation being approved. Elevated permissions should not become the default for future work.

After the task is completed, permissions should return to the default level.

Permission escalation should always remain proportional to the requested task and should never become the default operating mode.

---

## Project Adaptation

Projects may define additional approval-required or restricted operations based on their architecture, deployment model, data sensitivity, team workflow, or technology stack.

Project-specific permission rules belong in ../guidance/PROJECT_ADAPTATION.md.

---

## Related Examples

Implementation examples belong in examples/.

No implementation details belong in this document.
