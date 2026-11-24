# Contributing

VOCAL is a clinical-safety-sensitive project run by unpaid volunteers. Please read `README.md` first.

1. Open an issue (or comment on one) before large changes. Put the tracker ID in the title when there is one (`T07: ...`).
2. Branch from `main`: `feat/...`, `fix/...`, `content/...`, `docs/...`, `ops/...`.
3. Sign off every commit (`git commit -s`): this is the Developer Certificate of Origin, and it states that you have the right to submit the work under the project licence.
4. Use Conventional Commits: `feat(pwa): add pack loader`.
5. Open a pull request using the template. Say whether it touches clinical text, consent wording, data policy or security; if yes it needs the maintainer's explicit review.
6. Run `pre-commit install` once, so secrets, large files and audio are caught before they reach git.

Never include patient information, real recordings, real names of speakers or reviewers, or secrets. Test fixtures must be synthetic or the author's own voice, and labelled so.

Clinical text: do not add phrases to `content/*/approved/`. Approval happens in the review workflow (charter section 8) and is recorded there. Do not commit draft clinical text to this public repo.

