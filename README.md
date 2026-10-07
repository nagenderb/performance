# Robot Framework Performance Refactoring Demo
Run the baseline, refactor, then run again. The deliberate 5-second waits make the savings obvious.

Primary refactors:
1. Move `Initialize Application` from every suite's Suite Setup to `tests/__init__.robot` so it executes once.
2. Move repeated per-test setup/teardown in User Profile to Suite Setup/Suite Teardown.
3. Replace fixed navigation sleeps with condition-based waits.
4. Centralize repeated browser/session initialization in one suite lifecycle keyword.
