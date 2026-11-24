# VOCAL

**Voice-first Offline Clinical Access in Local languages** (working name; not yet name-checked).

VOCAL is an independent, non-commercial research project to build an offline phrase tool for clinician-patient communication in The Gambia, in Wolof, Fula and Mandinka. A clinician chooses a clinician-approved question; the app plays it in the patient's language, recorded by a native speaker; the patient answers by tapping.

**It is not a translator, a chatbot, or a diagnostic aid.** It generates no medical advice, and Phase 1 has no open-ended machine translation.

Status: pre-launch, Stage 0 (foundations). No data has been collected. No ethics approval has been obtained yet. Nothing here has been clinically validated.

## Where things are

| Folder | What it holds |
| --- | --- |
| `apps/landing` | Public landing page |
| `apps/pwa` | The offline clinic app (Phase 1 product) |
| `apps/platform` | Volunteer platform: recorder, review tool, data portal |
| `packages/schema` | Phrase and content-pack schemas and validators |
| `content` | Approved phrase text by language (unreviewed drafts are never committed here) |
| `ml` | Recognition experiments, configs, environments |
| `ops` | Server setup templates, backups, restore drill |
| `data` | Manifests only; data and models live outside git |
| `docs` | Charter, status, decisions, plans |

Project documents are listed in `docs/README.md`.

## Licences

Code: Apache-2.0 (`LICENSE`). Text in `content/` and `docs/`: CC BY 4.0 (`LICENSES/`). Brand assets: all rights reserved until the name check. Audio and datasets are not in this repository and have their own access rules (charter section 9).

## Contributing and security

See `CONTRIBUTING.md` and `SECURITY.md`. Never commit patient information, recordings or secrets.
