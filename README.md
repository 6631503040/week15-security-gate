# week15-security-gate

Sandbox/teaching only; for authorized lab use.

Throwaway repo for KOSEN69 Software Security, Week 15 "Break the Build".
It holds the lab's `sample-service.py` and the `security-ci.yml` gate
(Semgrep SAST, Trivy SCA + IaC, Gitleaks secrets), which fails the build
on HIGH/CRITICAL findings or any secret.

- `main` is kept green (Blue team, Task 3).
- Pull requests plant one defect each (Red team, Task 4) to show the gate failing.
