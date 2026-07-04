# Security Baseline

Version: 1.0

Status: Approved

---

## Purpose

This baseline defines the foundational security policy for AI-assisted software development. It
exists to make secure development practices explicit, reusable, and consistent across projects that
use AI agents such as coding agents, IDE assistants, and automated code-generation systems.

The baseline establishes the minimum security expectations for how AI agents may interact with
source code, local development environments, credentials, protected assets, and developer workflows.
Every other document in this knowledge base expands a topic introduced here.

---

## Scope

This baseline covers local development environments, AI-assisted software development workflows,
source repositories, development secrets, project configuration, and the handling of protected
assets during software engineering work.

It applies to human developers and AI agents operating on or near project source code, local files,
development credentials, and runtime configuration.

This baseline does not define enterprise infrastructure policy, production security architecture,
regulatory compliance programs, corporate identity governance, cloud account administration,
incident response, or formal audit requirements. Those areas require organization-specific controls
outside this reusable development baseline.

---

## Definitions

AI agent means any AI-assisted system capable of reading, generating, modifying, or reasoning about
source code, project files, development workflows, or software configuration. This includes coding
agents, IDE assistants, automated refactoring tools, code-generation systems, and other AI systems
that participate in software development tasks.

The term AI agent is used consistently throughout this knowledge base.

---

## Security Goals

The goals of this baseline are to:

- protect secrets and credentials from accidental exposure;
- minimize unnecessary AI agent access to protected assets;
- prevent accidental destructive operations;
- reduce the risk of accidental commits of secrets or private configuration;
- separate secrets from source code and reusable project assets;
- make development environments safer for AI-assisted work;
- create reusable security standards that can be adapted across projects;
- preserve human accountability for sensitive actions.

---

## Threat Model

This baseline addresses common risks in AI-assisted development.

Threats originating from AI agents include overreach, unintended file access, unintended shell
execution, prompt-based disclosure of protected information, and generated output that exposes
sensitive context.

Threats originating from developers include accidental secret exposure, accidental commits, unsafe
approval of sensitive actions, and placing secrets in source trees, prompts, logs, chat transcripts,
or automation outputs.

Threats originating from repository management include repository leaks, private configuration
committed to source control, insufficient separation between reusable project assets and secrets,
and misuse of development credentials stored near source code.

Threats outside the scope of this baseline include hostile compromise of the developer machine,
malware, production intrusion, cloud account takeover, insider threat programs, enterprise data
classification, formal compliance controls, and organization-wide security operations.

---

## Security Principles

Least Privilege: AI agents and development processes should receive only the access required for the
task at hand. Access to protected assets should not be granted by default.

Need-to-Know: AI agents should only inspect or use information that is necessary to complete the
current development task. Protected assets should remain outside routine AI agent context unless
there is a clear and approved need.

Default Deny: Access to secrets, credentials, private keys, sensitive databases, and destructive
operations should be denied unless explicitly allowed by policy or project adaptation. Permissions
should be explicitly granted rather than implicitly assumed.

Human Approval: Actions that expose protected assets, execute sensitive operations, modify security
boundaries, or risk data loss should require deliberate human approval.

Separation of Responsibilities: Source code, configuration examples, runtime secrets, development
credentials, and AI agent permissions should be managed as distinct concerns. No single artifact
should mix reusable code with private operational secrets.

---

## Security Boundary

The security boundary separates the developer, the AI agent, and protected assets.

The developer is accountable for granting access, approving sensitive actions, and deciding whether
AI-generated changes are acceptable. The AI agent is a productive development tool that may assist
with reading, editing, reasoning, and automation, but it is not an unrestricted administrator.
Protected assets are resources that require explicit handling rules because disclosure,
modification, or misuse could create security risk.

AI agents should operate within defined project permissions, file access limits, and approval
requirements. They should not be treated as trusted operators with unrestricted access to the
developer environment.

The security boundary should remain explicit and intentionally managed throughout the project
lifecycle.

---

## Protected Assets

Protected assets include categories of information or resources that require restricted access and
careful handling.

Secrets include values used to authenticate, authorize, decrypt, sign, or access private systems.

Credentials include usernames, passwords, tokens, access keys, session material, and service account
material.

Authentication Material includes any artifact that can establish identity, maintain a session,
authorize access, or bypass normal authentication flows.

Cryptographic Material includes keys, certificates, signing material, encryption material, and other
artifacts used to protect identity, integrity, confidentiality, or trust.

Sensitive Configuration includes private endpoints, local settings, service identifiers,
deployment-specific values, and configuration that could expose internal systems or weaken security
if disclosed.

Sensitive Data includes local, staging, test, or production data that may contain private,
regulated, proprietary, or user-specific information.

---

## Requirement Levels

Required means the control is mandatory for a project to comply with this baseline. Required
controls protect against common and high-impact development risks.

Recommended means the control should normally be adopted, but a project may document a reason for
using a different approach.

Optional means the control may improve security or usability but is not necessary for every project.

Project Specific means the control depends on the project’s language, framework, deployment model,
data sensitivity, or team workflow. Project-specific decisions should be documented in the project
adaptation document.

---

## Baseline Compliance

A project is considered compliant with this baseline when it meets the following minimum conditions:

- secrets are not committed to source repositories;
- protected assets are identified and access to them is restricted;
- AI agent access follows least privilege and need-to-know principles;
- sensitive shell actions require appropriate human approval;
- runtime secrets are preferred over secrets stored in source-controlled files;
- environment examples contain placeholders instead of real secrets;
- project-specific security decisions are documented;
- file access and AI agent permission expectations are clear enough for developers and AI agents to follow.

---

## Related Documents

- [File Access Policy](FILE_ACCESS_POLICY.md)
- [Agent Permissions](AGENT_PERMISSIONS.md)
- [Secrets Management](SECRETS_MANAGEMENT.md)
- [Runtime Secrets](../guidance/RUNTIME_SECRETS.md)
- [Secure Application Startup](../guidance/SECURE_APPLICATION_STARTUP.md)
- [Security Checklist](../operations/CHECKLIST.md)
- [Project Adaptation](../guidance/PROJECT_ADAPTATION.md)

---

## Future Evolution

This document should remain stable. It defines the root policy for the knowledge base and should
change only when the foundational security model changes.

New security topics should normally be added to dedicated documents rather than expanding this
baseline. Supporting documents may evolve more frequently to address specific practices, tools,
workflows, and project adaptations while preserving the policy structure defined here.

Changes to SECURITY_BASELINE.md should be infrequent because downstream policy documents inherit its
security model.
