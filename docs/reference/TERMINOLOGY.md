# Terminology

Version: 1.0

Status: Approved

---

## Purpose

This document defines shared terms used across the AI Security Playbook.

---

## Scope

This document defines terminology only.

It does not define security policy or implementation guidance.

---

## Terms

### AI-assisted software development

Software development work that uses AI agents to read, generate, modify, explain, or reason about
software artifacts.

### AI coding assistant

An AI tool used by engineers to support coding, debugging, review, refactoring, or documentation
work.

### AI agent

An AI system capable of reading, generating, modifying, executing, or reasoning about project files
or development tasks.

### Protected asset

Information or material that requires controlled access because exposure or misuse could create
security, privacy, or operational risk.

### Protected resource

A file, directory, system, store, or project artifact that contains or provides access to protected
assets.

### Restricted resource

A resource that should remain inaccessible during normal AI-assisted development unless explicit
authorization is granted.

### Secret

Sensitive information used to authenticate, authorize, decrypt, sign, or access protected systems or
data.

### Credential

Information used to prove identity or gain access to a system, account, service, or protected
resource.

### Authentication material

Data or artifacts used by a system or person to authenticate, including tokens, keys, passwords, and
certificates.

### Cryptographic material

Keys, certificates, seeds, signing material, or other data used for encryption, decryption, signing,
or verification.

### Sensitive configuration

Configuration that exposes protected assets, security behavior, private endpoints, credentials, or
environment-specific access details.

### Sensitive data

Project, user, customer, business, or operational data that requires controlled access.

### File classification

The process of assigning project resources to access categories such as public, internal, protected,
or restricted.

### Permission model

The project rules that define which operations AI agents may perform, which require approval, and
which are restricted.

### Approval-required operation

An operation that may be allowed only after explicit developer approval.

### Restricted operation

An operation that should not be performed during normal AI-assisted development unless explicitly
authorized.

### Runtime secret

A secret made available to a running process or execution context for a specific runtime need.

### Runtime secret handling

The process for making secrets available at runtime while minimizing lifetime, scope, and exposure.

### Startup mechanism

An approved mechanism responsible for preparing an application for execution.

### Project adaptation

The process of applying the reusable playbook to a specific project while documenting
project-specific decisions.

### Checklist

An operational verification document used to confirm that project security guidance has been
applied.

### Policy

A document that defines required security expectations, boundaries, or rules.

### Engineering guidance

A document that explains how policy applies to engineering work without prescribing a single
implementation.

### Operations

Documents or processes used to verify, maintain, or review project alignment during engineering
work.

### Reference document

A document that defines shared terms, classifications, or standards used by other documents.
