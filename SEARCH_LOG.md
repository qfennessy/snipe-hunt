# Search history: independent agent collaboration

Last updated: 2026-09-22. Initially consolidated loops 1–17 from previous work;
then extended with newly executed loops 18–28. This is the restart point.

## Resume here

- **Completed:** loops 1–28, plus the PraisonAI follow-up.
- **Next:** loop 29, join one corrected archive seed to a later action by a
  separately operated agent. See [PLAN.md](PLAN.md#loop-29-join-two-independently-operated-artifacts-by-exact-reuse).
- **Finding so far:** no established example of independent agent collaboration.
  ECC #2161 is now calibration: an agent-attributed contribution consumes
  public automated-review feedback and the reviewers confirm its fix, but the
  specific run is private and source selection is unproved. Loop 22 found an
  agent report that a distinct owner later fixed, but the responder remains
  automation-unknown and stayed in the same project. HELLO and the report
  catalogue remain reuse examples, not established target interactions. Loop 23
  found no later dependent use of Patbby's channel report in its bounded checks.
  Loop 24 validated the corrected archive scan on three days but its three
  live-checked leads did not qualify. Loop 25 found no different-owner action
  on its bot-branded report seed; the closest later PR was same actor/owner.
  Loops 26–28 found a complete Fullsend agent chain, but its bots are
  configured roles in one platform. The first full-window archive ranker also
  misattributed human issue text to a label bot; the corrected scan is saved.
- **Correction:** loops 1 and 6 had over-escaped archive regexes. Their zero
  results are invalid negative evidence. Original SQL/jobs were recovered in
  loop 18; fixed one-day queries return hits. Loop 27 completed a full-window
  *discovery* scan, not an exhaustive search for every collaboration pattern.
- **Detailed interpretation:** [RESEARCH.md](RESEARCH.md). This file is the
  query/lead ledger; the plan describes what to do next.
- **Scope used:** 2026-05-01 through 2026-09-22 inclusive, 145 days. Exa queries
  used date wording, which did not prevent out-of-window results.

The older notes sometimes rejected anything with a workflow, an agent-framework
repository, a citation, or a human comment. That filter was too broad. The
current exclusion is a demonstrated shared operator, prearranged assignment,
or human-directed handoff explaining the particular interaction. Previously
rejected leads are not automatically promoted; some need a narrower recheck.

## What was preserved

This ledger consolidates the conversation and existing research notes. Query
text is marked **exact** only where it survives. Otherwise it is a description
of the search, not a reconstructed command presented as an original.

Most raw API responses, search result sets, screenshots, and content hashes
from loops 1–17 were not saved as workspace artifacts. Those links were not
blanket-refreshed during consolidation; selected leads were reopened in loops
18–20 as recorded below. Counts are historical
snapshots. Exa result counts describe returned/requested search slots, not that
many unique pages read in full. GitHub searches were bounded samples, not
exhaustive scans. Actual elapsed time per loop was not recorded.

For loops 18–20, SQL is saved in `queries/`, and selected response metadata,
all 51 account-search records (without bodies), and exact Exa requests are in
[the evidence snapshot](evidence/2026-09-22-loops-18-20.json). Loop-specific
snapshots cover [21](evidence/2026-09-22-loop-21.json) and
[22](evidence/2026-09-22-loop-22.json), and
[23](evidence/2026-09-22-loop-23.json),
[24](evidence/2026-09-22-loop-24.json),
[25](evidence/2026-09-22-loop-25.json), and
[26–28](evidence/2026-09-22-loops-26-28.json). These are selected snapshots, not
complete dumps of every request or page body.

## Completed-loop index

| Loop | Search performed | Recorded result | Resume decision |
| --- | --- | --- | --- |
| 1 | GH Archive agent/handoff phrase scan; six Exa searches, 60 result slots | Archive zero invalidated in loop 18; #131 was a configured same-bot workflow | Original SQL recovered; retain #131 as a retrieval check |
| Follow-up | Inspect PraisonAI #2251 | Intended review-bot chain and trigger failure | Keep as planned-workflow calibration |
| 2 | Inspect `prql-bot` → `tend-agent` issue/PR chain; one Exa novelty query, ten results | Bot diagnosis and reply; later work explicitly requested by maintainer | Recheck initial exchange separately from human-directed implementation |
| 3 | Four Exa searches, 40 result slots; inspect “No Handshake Required” and title reuse | No external consumer found in inspected results | Park until a specific consumer appears |
| 4 | Three Exa searches, 30 result slots; generic phrase/code search | `for future agents`: 19,136 hits; distinctive starter phrase: zero; one shard error | Avoid generic phrase sweeps; error is not a negative result |
| 5 | Three Gist seeds; three Exa reuse searches, 15 result slots; three code searches | HELLO text copied into a manual-experiment reference file | Keep exact-reuse example; no independent agent consumer established |
| 6 | GH Archive Gist-link + agent-language scan | Archive zero invalidated in loop 18 | Corrected full-window discovery pass completed in loop 27; not exhaustive |
| 7 | Follow external audit-Gist links from PRs | ClankOS trail included an explicit AIBTC fix-PR bounty reference | Planned-task lead; retain source/consumer links |
| 8 | GitHub Gist-link searches with model labels | No kept candidate in bounded output | Labels alone were low signal; screening was incomplete |
| 9 | Bot-authored Gist-link search across three date slices | Mostly routine automation and an internal Cursor workflow | Do not rerun blanket bot-name filtering |
| 10 | Three Exa behavior queries, 30 result slots | Solo agents, shared handoff tools, operated agent teams | No kept candidate; exact queries below |
| 11 | Three Exa artifact-seeding queries, 30 result slots | Three public run records selected for inspection | Original five-artifact target was not met |
| 12 | Read the three run-record READMEs and repository metadata | Documented human-operated/internal agent systems | Internal collaboration excluded; external consumption remains possible |
| 13 | Three exact-string GitHub code queries | One external catalogue entry plus a same-owner reference | Real reference edge; investigate its consumer |
| 14 | Inspect catalogue entry, history, workflow path, bot/app metadata | Generic summary sourced through Hacker News; author-name attribution unresolved | Catalogue reuse, not established autonomous collaboration |
| 15 | Three Exa cross-project action queries, 30 result slots | Ordinary maintenance and explicit agent tools dominated | No kept candidate; exact queries below |
| 16 | Three GitHub adoption-language searches, up to 20 results each | Two result blocks; no items shown for third query | No systematic attribution measurement; third query needs validation |
| 17 | Inspect OhMyGithub #56, comments, workflows, repository metadata | PR preserves a user request, source URL, and `/oc` command | Explicit human-directed handoff; keep as retrieval check |
| 18 | Known-event controls; recover old SQL; reproduce regex bug; corrected day scan | Both old nulls invalid; May 28 has 120 phrase and 39 Gist-plus-agent matches; selected controls show archive gaps | Use corrected queries and live-source checks |
| 19 | Three Exa searches, 20 slots; three account searches, 51 records; five shortlisted encounters | Patbby and Godot are one-sided disclosures; tend leads human-triggered; ECC #2161 kept | Trace ECC exact-run provenance |
| 20 | Reconstruct tend/PRQL round trip and ECC feedback loop | Found PRQL #6124 return leg, but same human directs both ends; ECC has review → patch → confirmation | Reject tend as independent; keep ECC as possible encounter |
| 21 | Four Exa workstreams, 36 result slots, four page reads; inspect Superhuman pre-PR release and local-state design | Framework supports review handling, but run state is local and no ECC-specific log surfaced | Downgrade ECC to calibration; use a new high-entropy artifact seed |
| 22 | Four Exa workstreams, 29 result slots, three page reads; GitHub code/commit search and Hadamard timelines | Agent report → owner repair is explicit, but same-project and consumer autonomy is unknown | Calibration only; require external consumer plus automation provenance |
| 23 | Three Exa searches, 21 slots; source URL, phrase, code, and commit searches; chronology check | No later citation to Patbby's issue; nearby issue concerns another failure; method predates source | Scoped null; next use corrected archive discovery |
| 24 | Two capped BigQuery jobs over May 27–29; 80-row body-match sample; three live checks | Positive control reproduced; 325 raw phrase / 113 raw Gist-agent matches, but no qualifying chain in checked leads | Full-window scan then pending; completed in loop 27 |
| 25 | One bot-branded incident seed; three Exa searches (28 requested slots); 11 GitHub searches; one later PR inspected | No distinct-owner consumer; closest mem PR #455 is same actor/owner, different bug | Scoped null; prefilter source ownership and exact-run provenance next |
| 26 | Two identical capped three-day cross-owner queries; 39 returned rows; Fullsend calibration | Self Gists, citations, and shared-platform links dominate; Fullsend is the best chain seed | Exclude self-linked owners and track body author separately |
| 27 | Two capped 145-day BigQuery jobs (229.6 GB each); initial and corrected ranker | 1,062 initial eligible events shrink to 455 after body/event authorship correction; top 120 returned | Initial count invalid for authorship; trace corrected leads only |
| 28 | Two Exa provenance searches (10 requested slots); live GitHub trace of Fullsend and OpenClaw | Fullsend external-code-agent → retro → triage → merged coder fix is planned one-platform work; OpenClaw bot merely labeled a human issue | No independent encounter; preserve both retrieval traps |

## Queries and checks retained

### Loops 1–6: archive and early fragment probes

Archive event types recorded in the notes:

```text
IssueCommentEvent
IssuesEvent
PullRequestEvent
PullRequestReviewCommentEvent
PushEvent
ReleaseEvent
GollumEvent
```

Loop 18 recovered the original SQL from BigQuery job history. The earlier
notes recorded the intended predicate, not the faulty executed one. Exact
historical queries are now saved as
[loop01-original-invalid.sql](queries/loop01-original-invalid.sql) and
[loop06-original-invalid.sql](queries/loop06-original-invalid.sql). Do not reuse
them for discovery. Both double-escaped backslashes inside raw SQL strings:
the first broke word boundaries; the second broke the literal Gist hostname.

Loop 6 combined `gist.github.com` with `agent|claude|codex|gpt|bot` in event
payloads over the same window. Both original runs returned empty arrays, but
**neither result supports an absence claim**. The loop 18 entry below records
the recovered job IDs, executable positive control, and corrected sample.

Early phrase probes retained in the notes:

```text
No Handshake Required
for future agents
zero cost to you huge help to others
if you are another agent
```

The last query encountered a GitHub shard failure. Exact wrapper syntax and
the early Exa prompt strings are unavailable. Loop 5 recorded three Gist seeds,
but only the successful HELLO source/consumer pair is retained by URL below.

### Loops 7–9: Gist-linked issues and PRs

Search intent: GitHub issues/PRs mentioning Gist URLs near `[codex]`, `[claude]`,
or `[gpt]`, then inspection of external report → action links. Complete query
strings were not preserved. The broad results exposed the ClankOS/AIBTC lead.

The later bot-author pass searched Gist links in three creation-date slices:
May–June, July–August 15, and August 16–September 22. It requested up to 100
items per slice and filtered returned author logins ending in `[bot]`. Output
was truncated; it was not an exhaustive review and its exact sampled set is
unavailable. A bot suffix was a selection heuristic, not proof of an AI agent.

### Loop 10: exact Exa queries

Each requested ten results, with text limited to 500 characters:

```text
public GitHub record from May through September 2026 showing one autonomous AI coding agent independently finding and using a persistent artifact created by another unrelated agent with no human handoff

GitHub pull request where an AI agent cites a public Gist audit or issue created by a different AI agent and acts on it independently rather than through a shared workflow

practitioner report of agent to agent collaboration through public persistent artifacts without a dispatcher shared task queue or human coordinator in 2026
```

Examples screened included `max9159/agent-context-store` and NXTG's repository
coordination write-up. Their descriptions concern deliberately arranged teams.
This pass did not establish an external, independent consumer of their work.

### Loops 11–12: exact Exa queries and direct reads

Each requested ten results, with text limited to 700 characters:

```text
public GitHub Gist created between May and September 2026 that documents an autonomous coding agent run or result and is not a workflow template or a directed handoff

GitHub repository public autonomous agent run log evidence created in 2026 where an AI agent leaves a durable report for no specified recipient

public GitHub issue or pull request in 2026 written by an AI coding agent with an investigation report and no explicit human assignment or downstream agent workflow
```

Then read repository metadata and READMEs for:

```text
nelsonwerd/proof-ate-the-project
alexbesp18/ops-log
parweb/god-flight-recorder
```

The first described a human-directed external audit and 30 operator messages;
the second described a one-person fleet; the third described an orchestrator
and shared directory. These explain their internal interactions. They do not
rule out a separate agent later consuming a public report.

### Loops 13–14: exact code queries and catalogue checks

Queries sent to `search/code`, each with `per_page=100`:

```text
"the proof ate the project"
"numbers measured never estimated"
"No framework no orchestration platform"
```

The initial `gh api` calls omitted `-X GET`; with `-f` arguments they made the
wrong request method and returned 404. They were retried with explicit GET:

```sh
gh api -X GET search/code \
  -f q='"the proof ate the project"' \
  -f per_page=100
```

The successful output listed the `Arnon-hs/open-source` catalogue entry and
`nelsonwerd/idea-to-ship-skills` README. No items were printed for the other two
queries; totals and indexing coverage were not retained. The phrases were sent
literally, but punctuation/wording differences from source text also limit
what a miss tells us.

Consumer checks used these GitHub API paths:

```text
repos/Arnon-hs/open-source
repos/Arnon-hs/open-source/contents/misc/nelsonwerd-proof-ate-the-project.md
repos/Arnon-hs/open-source/commits?path=misc/nelsonwerd-proof-ate-the-project.md&per_page=10
repos/Arnon-hs/open-source/contents/.github/workflows
repos/Arnon-hs/open-source/contents/.github/workflows/catalog.yml
repos/Arnon-hs/open-source/commits/c24b0ac61972
users/repo-scout%5Bbot%5D
apps/repo-scout
```

The entry is a generated-looking catalogue summary, not a full copy of the
report. It names Hacker News as its discovery source. The file-history response
included these commits:

| Time (UTC) | Commit | Author-name string | Message |
| --- | --- | --- | --- |
| 2026-08-22 22:57:07 | `7d901757ef96` | `repo-scout[bot]` | `chore(catalog): sync repos from Zeabur scout` |
| 2026-08-24 19:34:39 | `5f136ef7cc23` | `repo-scout[bot]` | `chore(catalog): sync repos from AtlasRepo Scout` |
| 2026-09-05 21:32:15 | `c24b0ac61972157c954e4f4f762b24486b8cf292` | `repo-scout[bot]` | `chore(catalog): sync repos from AtlasRepo Scout` |

The latest commit's GitHub `author` and `committer` fields were null and its
signature status was unsigned. A Bot profile exists with the same name, but
the commit name alone does not bind the commit to that app. The workflow paths
and app endpoint returned 404. Those responses do not establish the absence
of an external runner, common operator, or private human instruction.

### Loop 15: exact Exa queries

Each requested ten results, with text limited to 650 characters:

```text
GitHub pull request created between May and September 2026 where a maintainer changes code because of a public finding or report from an unrelated GitHub repository, with the external source linked in the pull request

public GitHub issue or commit from May through September 2026 that says a project was discovered through an external public artifact and then adopted a recommendation or fixed a defect

GitHub project 2026 public automated repository scout creates a code change based on an external GitHub artifact rather than merely cataloguing it
```

No lead from this result set received enough follow-up to establish the target
interaction. The prior log's “no candidate survived” means no candidate was
kept from that bounded screening, not every result was conclusively ruled out.

### Loop 16: exact GitHub issue/PR searches

Sent via `gh api -X GET search/issues`, `per_page=20`:

```text
"inspired by" "github.com" is:pr created:2026-05-01..2026-09-22
"based on" "github.com" is:pr created:2026-05-01..2026-09-22
"discovered from" "github.com" is:issue,pr created:2026-05-01..2026-09-22
```

The first two produced 20 listed items each. No items were printed for the
third; response metadata was discarded and errors were suppressed, so this is
not a verified zero. Its `is:issue,pr` qualifier needs validation; retry as
separate issue and PR queries if needed. No rate or count of autonomous versus
human authors was measured.

### Loop 17: direct provenance check

Read these API paths:

```text
repos/AgentsLoop/OhMyGithub/pulls/56
repos/AgentsLoop/OhMyGithub/issues/56/comments
repos/AgentsLoop/OhMyGithub/contents/.github/workflows
repos/AgentsLoop/OhMyGithub
```

PR #56 was created on 2026-08-25 at 03:12:09 UTC by `github-actions[bot]`.
Its body preserves an implementation request naming the external game-creator
project and ending with `/oc`. The repository lists OpenCode workflows. The
source was supplied in the request: no independent discovery was established.

### Loop 18: retrieval validation and regex repair

Date: 2026-09-22. Tested three known live items, recovered original query jobs,
then ran a corrected one-day discovery sample. This loop invalidates the old
archive nulls; it does not complete a corrected full-window search.

Recovered historical BigQuery jobs, both in project `cocos-story-v2`, location
`US`:

| Original loop | Job ID | Bytes processed | Saved exact SQL |
| --- | --- | --- | --- |
| 1 | `bqjob_r1578d1fb527240ba_000001a0ca044660_1` | 223,316,618,929 | [original, invalid](queries/loop01-original-invalid.sql) |
| 6 | `bqjob_r3cba50d6da669557_000001a0ca2d2340_1` | 223,371,484,540 | [original, invalid](queries/loop06-original-invalid.sql) |

Job history supplied the actual SQL, not a reconstruction. The raw regexes had
two backslashes where one was intended. The phrase pattern searched for literal
backslash-b instead of word boundaries; the Gist pattern likewise failed its
known URL input. Reproduction with
[loop18-regex-reproduction.sql](queries/loop18-regex-reproduction.sql) returned:

```text
original_phrase=false  corrected_phrase=true
original_gist=false    corrected_gist=true
```

New saved probes:

| SQL file | Purpose and result |
| --- | --- |
| [known-events](queries/loop18-known-events.sql) | Initial repository/date diagnostic, limit 150, raw payload output truncated; superseded by exact controls |
| [exact-controls](queries/loop18-exact-controls.sql) | Exact repository/date/item checks; two metadata-only events for self-evolving #131; none for the other two controls |
| [phrase-control](queries/loop18-phrase-control.sql) | May 28 counts: 3,129,457 selected-type events; 120 phrase, 61 Gist, 39 Gist-plus-agent matches |
| [match-sample](queries/loop18-match-sample.sql) | First 15 matches by time, 600-character excerpts; discovery calibration, not collaboration findings |
| [regex-reproduction](queries/loop18-regex-reproduction.sql) | No-table positive controls proving the escaping error |

Executed job names, with the same project/location as above:

```text
snipe_loop18_20260922_1812
snipe_loop18_controls_20260922_1816
snipe_loop18_phrases_20260922_1816
snipe_loop18_sample_20260922_1819
snipe_loop18_regex_20260922_1820
```

Command form (use a new job ID to rerun):

```sh
bq query --project_id=cocos-story-v2 --location=US \
  --use_legacy_sql=false --format=prettyjson \
  --maximum_bytes_billed=2500000000 \
  < queries/loop18-phrase-control.sql
```

The known-event probes used a 6 GB cap; one-day probes 2.5 GB; no-table
reproduction zero bytes. The phrase-count job completed without an error or
cache hit, processing 1,371,554,616 bytes (1,372,585,984 billed).

Live controls opened through `repos/{owner}/{repo}/pulls/{number}` or
`issues/{number}`:

- `self-evolving/repo` PR #131, opened May 4 03:45:00 UTC by
  `sepo-agent-app[bot]`. Archive IDs `9043612919` (opened) and `9044066282`
  (labeled 04:10:33) were recovered; both lacked tested body fields.
- `max-sixty/tend` issue #627, opened May 28 09:11:32 UTC by `prql-bot`.
  Not recovered in its daily control query.
- `AgentsLoop/OhMyGithub` PR #56, opened August 25 03:12:09 UTC by
  `github-actions[bot]`. Not recovered in its daily control query.

Raw hourly files were downloaded, decompressed, and filtered to exact repo/item
using `curl`, `gzip`, and `jq`. URL template:
`https://data.gharchive.org/{hour}.json.gz`. Hours actually inspected:

```text
2026-05-04-3    2026-05-04-4
2026-05-28-9    2026-05-28-10
2026-08-25-3    2026-08-25-4
```

They returned the same two #131 events and no matching #627/#56 events. An
initial broader tend filter found a push, which is not recovery of issue #627.
These controls are a selected sample, not a general coverage estimate.

May 28 body counts were 48,805 issue bodies, 40,135 comment bodies, and zero PR
bodies in the tested paths. Matches may come from embedded parent issue text,
not the comment excerpt. The 15-match sample included
[simonw/datasette #2749](https://github.com/simonw/datasette/pull/2749#issuecomment-4559735844)
explicitly describing a human's Codex instruction, and
[alucero270/anemoi #21](https://github.com/alucero270/anemoi/issues/21) using
future-agent/operator wording. Neither is promoted as independent collaboration.

Decision: stop using loops 1/6 as negative evidence. Keep both the corrected
search and the independently observed archive gaps in view. Next broad archive
probe must use working controls; no 145-day corrected rescan has run.

### Loop 19: identity-first outward search

Date: 2026-09-22. Three exact Exa queries, requesting 10, 5, and 5 result slots:

```text
Public GitHub accounts of autonomous AI agents contributing pull requests to unrelated open source projects during May through September 2026 with operator disclosure and links to their actual GitHub profile

prql-bot tend-agent GitHub autonomous agent upstream issues operator max-sixty provenance

ClankOS GitHub autonomous agent operator public open source contributions
```

Exa was discovery only. Primary GitHub reads supplied the account provenance.
ClankOS results did not add enough new identity evidence; selected Patbby,
prql-bot, and gaurav0107 instead. The latter is a mixed account, not an
agent-only identity. An initial `imkp1/superhuman` result was a copy/fork; the
attribution used here comes from the checked `gaurav0107/superhuman` origin.

Exact `gh api -X GET search/issues` queries, all `per_page=20`, `sort=created`:

```text
author:Patbby -user:Patbby created:2026-05-01..2026-09-22
author:prql-bot -repo:PRQL/prql created:2026-05-01..2026-09-22
author:gaurav0107 is:pr -repo:imkp1/superhuman created:2026-05-01..2026-09-22
```

First two used `order=asc`; last used `order=desc`. Totals were 11, 37, 220;
returned records 11, 20, 20; all three reported `incomplete_results=false`.
That flag does not make the unpaginated 20-record samples exhaustive. The
gaurav query excludes the initially discovered fork, not every own project;
some returned items were own-project work. All 51 metadata records are saved
in the evidence snapshot.

Primary provenance inspected:

```text
repos/Patbby/Patbby/readme
repos/Patbby/Patbby/commits/HEAD
repos/PRQL/prql/contents/.config/tend.yaml
max-sixty/tend installation documentation and public PRQL run reports
repos/imkp1/superhuman/readme
repos/gaurav0107/superhuman/readme
repos/gaurav0107/superhuman/commits/HEAD
```

Saved source heads: Patbby `6b82cb64e508069861bb7ede05f81f506c248711`
(May 8); Superhuman `93d35c6cf641aa89c740ecee45dc6a46705b73ee`
(August 11). The latter retrospectively attributes the June ECC contribution;
it is not a run-specific transcript.

Five shortlisted encounters: hadamard #10, tend #384, tend #665, Godot #121806,
and ECC #2161. Their primary bodies and relevant replies were inspected; see
the result table in RESEARCH.md. An additional ECC #2606 review/fix exchange
was screened, but the Superhuman README did not specifically attribute it.
Responder `haelyra` had no agent disclosure in the inspected profile. Do not
transfer the Godot PR's disclosure to every action by the same account.

Decision: retain #2161 for dependent-action tracing; park the one-sided
disclosures; reject the two tend handoffs where the public body names a human
request. The shortlist does not assert five independent agent encounters.

### Loop 20: upstream return and external review trace

Date: 2026-09-22. Main probe reconstructed PRQL → tend → PRQL. Direct API
families inspected (each item via issue or pull endpoint as appropriate,
plus comments; commits/files where noted):

```text
PRQL/prql: pulls/5960, issues/5960/comments
max-sixty/tend: issues/627, issues/627/comments
max-sixty/tend: issues/629, issues/629/comments
max-sixty/tend: pulls/659
PRQL/prql: pulls/6124, issues/6124/comments, pulls/6124/files
PRQL/prql: issues/5852/comments
```

Followed explicit issue links and linked discussion to find return PR #6124.
It removes the obsolete issue-creation job and template after the upstream
fix. Upstream merge: `8005af0b94218f66485fa4f847d61e9db913431c`.
Return merge: `a3c36942a48900069841a9acc02c97be1c355d40`. Both were merged
by `max-sixty`; that same human requested the originating diagnosis and the
upstream implementation. Exact linked timeline is in
[RESEARCH.md](RESEARCH.md#tendprql-return-leg-found-independence-ruled-out).

The large May tracking comment initially truncated. A narrower read extracted
the relevant #627/#629 lines from comment `4553027143`, including the standing
upstream-filing exception and the May 29 decision not to treat upstream talk
as authorization for local cleanup. Its `created_at` is May 27, `updated_at`
May 31; do not date all appended entries to its creation. It is a run summary,
not a raw execution transcript. Decision: real round trip, not independent.

Supplemental kept lead, carried from loop 19:

```text
repos/affaan-m/ECC/issues/2078
repos/affaan-m/ECC/issues/2078/comments
repos/affaan-m/ECC/pulls/2161
repos/affaan-m/ECC/issues/2161/comments
repos/affaan-m/ECC/pulls/2161/comments
repos/affaan-m/ECC/pulls/2161/commits
repos/affaan-m/ECC/commits/9e5a59be58edd04c000853c92f5211bd832eb08a
users/aiia-caixo
repos/aiia-caixo/aiia-caixo/readme
```

The source-author profile was available but did not establish agent identity;
its profile README returned 404, which proves neither human authorship nor
concealed automation. The PR's metadata shows an external fork and CONTRIBUTOR
association, not independent operation by itself. Review comments from
CodeRabbit/Cubic, a corrective commit explicitly crediting both, and three
acknowledgments establish the feedback → patch → confirmation dependency.
The current review bodies include later resolved markers; use their creation
times for sequence, not an assumption that today's full text existed then.

Loop 21 later checked the contributor's own release. It found review-handling
capability but no run-specific public provenance, so the current classification
is **agent-attributed outcome with a public automated-review feedback loop**,
not a possible independent encounter. Details immediately follow.

### Loop 21: Superhuman execution-provenance check

Date: 2026-09-22. Scope: determine whether public material ties Superhuman to
the selection of ECC #2078 and processing of the #2161 review comments. This is
a bounded public-record check, not a claim about local files or private runs.

Exact Exa workstreams, requesting 10, 10, 8, and 8 results (36 source slots):

```text
Public GitHub execution log, agent transcript, or run report from the Superhuman autonomous coding agent showing work on affaan-m ECC pull request 2161 or issue 2078 in June 2026

Public repository commit, issue, or workflow record by gaurav0107 everything-claude-code that documents an autonomous coding-agent run reading CodeRabbit or Cubic review comments and making a follow-up patch during 2026

Detailed public engineering write-up by the Superhuman GitHub agent describing autonomous issue discovery, pull request creation, and review response workflows with links to actual 2026 GitHub contributions

affaan-m ECC pull request 2161 CodeRabbit Cubic autonomous agent review correction 9e5a59b June 2026
```

Result: 36 returned search slots across four workstreams, deduplicated by URL
before follow-up. Four relevant pages were fetched: Superhuman, ECC #2161, ECC
#2078, and the contributor's ECC fork. Exa found framework documentation,
later release material, and unrelated review examples; it did not surface a
June execution transcript for this PR.

Primary GitHub checks:

```text
repos/gaurav0107/superhuman/commits?until=2026-06-05T19:34:29Z&per_page=1
repos/gaurav0107/superhuman/git/trees/d705965c3c0766c3319ed57054f92b2bbdceca00?recursive=1
repos/gaurav0107/superhuman/contents/{historical path}?ref=d705965c3c0766c3319ed57054f92b2bbdceca00
repos/gaurav0107/superhuman/tags?per_page=100
repos/gaurav0107/superhuman/releases?per_page=100
search/code?q=ECC+repo:gaurav0107/superhuman
search/issues?q=2161+author:gaurav0107+created:2026-05-01..2026-09-22
```

The last public Superhuman commit before #2161 was
[v0.5.0](https://github.com/gaurav0107/superhuman/commit/d705965c3c0766c3319ed57054f92b2bbdceca00)
at 2026-05-24 15:18:39 UTC. It is a released tag and predates the PR. These
historical source files were read at that immutable ref:

```text
agents/resolve-comments.md
agents/opensource-contributor.md
commands/contribution-dashboard.md
schemas/run_telemetry.schema.json
schemas/current_contribution.schema.json
scripts/orchestrator/write_run_summary.sh
```

What they prove: the release defines a `resolve-comments` role that fetches
inline/top-level reviews, classifies them, and dispatches fixes; its telemetry
schema lists `resolve-comments` and `builder:apply_comments`. The orchestrator
can select an issue, but its documented command can also receive an exact
`owner/repo issue-number` from a caller. Its contributor prompt pins the
ordinary `gaurav0107` Git identity and prohibits AI coauthor trailers.

What they do not prove: this version was installed or invoked for ECC #2161;
who selected #2078; or whether a human made the corrective commit. All
operational state is specified under `~/.superhuman/`: per-repo state and
telemetry, global outcomes and loop history, and a local terminal
`run_summary.json`. The dashboard is deliberately local-only. GitHub code
search for `ECC repo:gaurav0107/superhuman` returned total 0; the only
author-#2161 issue search result was ECC #2161 itself.

The public default PR-attribution feature appears in the project only on July
4, after this June work. It cannot be used to prove what authored #2161.
Selected queries and primary-source anchors are in
[evidence/2026-09-22-loop-21.json](evidence/2026-09-22-loop-21.json).

Decision: no direct public read → action sequence. Downgrade ECC #2161 to
calibration. Keep the method—correlating an agent-disclosed mechanism with a
concrete response—but require a public run artifact or an external,
high-entropy source → dependent-action trace before treating it as independent
agent collaboration.

### Loop 22: distinctive-report correction trace

Date: 2026-09-22. Source selected: [Patbby](https://github.com/Patbby/Patbby)
publicly describes its account as an autonomous OpenClaw operation. The artifact
was [DeconBear/hadamard issue #8](https://github.com/DeconBear/hadamard/issues/8),
opened by Patbby on 2026-06-18 at 17:56:22 UTC. It names the
`ActoviqBridgeSession` stream/send state race and a specific erroneous state
transition. [PR #10](https://github.com/DeconBear/hadamard/pull/10), opened at
17:58:54 from `Patbby/actoviq-agent-sdk`, proposes a corresponding repair.

Exact Exa workstreams, requesting 8, 8, 8, and 5 results (29 source slots):

```text
Public GitHub issue, pull request, commit, or code discussion created after June 18 2026 that cites or reuses the distinctive ActoviqBridgeSession stream send started race diagnosis from DeconBear hadamard issue 8

Detailed public GitHub engineering artifact about ActoviqBridgeSession where a stream call and send call race because a started state flag is set asynchronously

Public response to a Claude agent bridge session bug where consecutive stream calls incorrectly create a new session instead of resuming the existing session in 2026

DeconBear Hadamard autonomous agent Claude Fable public execution record operator profile 2026
```

The first three semantic results were mostly unrelated streaming/session bugs.
The identity follow-up returned DeconBear's profile and Hadamard pages, not a
public run log. Three pages fetched: the profile, Hadamard, and an unrelated
DeconBear commit showing a Claude coauthor trailer. Exa is source discovery;
the conclusion below comes from GitHub primary artifacts.

Direct GitHub checks:

```text
search/code?q=ActoviqBridgeSession
search/commits?q=ActoviqBridgeSession+committer-date:2026-06-18..2026-09-22
repos/DeconBear/hadamard/issues/8
repos/DeconBear/hadamard/issues/8/comments?per_page=100
repos/DeconBear/hadamard/pulls/10
repos/DeconBear/hadamard/issues/10/comments?per_page=100
users/DeconBear
repos/DeconBear/hadamard/commits/54ae654a98904aacdf7b3266fcab1f8c4b78b83a
```

Code search returned zero exact hits. Commit search returned one match, in
`DeconBear/hadamard` itself:
[54ae654a](https://github.com/DeconBear/hadamard/commit/54ae654a98904aacdf7b3266fcab1f8c4b78b83a),
authored June 28 by DeconBear. It is a broader multi-turn-session repair and
has a `Claude Fable 5` coauthor trailer. On July 28, DeconBear's
[issue closure](https://github.com/DeconBear/hadamard/issues/8#issuecomment-5102070075)
said main now sets the state synchronously and covers the race described in #8;
the [PR closure](https://github.com/DeconBear/hadamard/pull/10#issuecomment-5102067978)
calls Patbby's patch superseded rather than merged.

The response creates a well-supported source → repair edge, but it is not
independent-agent evidence. It remains in the source's target project;
DeconBear's public profile is a normal `User` with no bio or autonomous-run
provenance. Hadamard advertises multi-agent and multi-runtime capabilities, but
that product description does not identify the author of this commit. A model
coauthor trailer demonstrates AI assistance, not an independently operated
agent or a discovery route.

Decision: classify **agent-reported bug → AI-assisted or unattributed maintainer
fix**, not an independent public agent encounter. The next loop should retain
the high-entropy-fingerprint approach but require a different owner/project
consuming the source and public automation provenance for that consumer.
Selected queries and source anchors:
[evidence/2026-09-22-loop-22.json](evidence/2026-09-22-loop-22.json).

### Loop 23: channel-notification fingerprint

Date: 2026-09-22. Seed: [Johnixr issue #18](https://github.com/Johnixr/claude-code-wechat-channel/issues/18),
opened 2026-06-09 05:58:24 UTC by `Patbby`. Its [public profile](https://github.com/Patbby/Patbby)
discloses an autonomous OpenClaw account. The issue reports that a WeChat MCP
server and polling connection work, but Claude Code 2.1.169 silently ignores
`notifications/claude/channel`; its channel flag reports “Channels are not
currently available.” The original issue has no comments and remains open in
the inspected snapshot.

Exact Exa queries, 8 + 8 + 5 requested result slots:

```text
GitHub pull request or issue in July through September 2026 where an autonomous coding agent changed a different messaging bridge after reading Johnixr claude-code-wechat-channel issue 18 about notifications/claude/channel being ignored

Open-source 2026 messaging bridge correction prompted by Claude Code 2.1.169 saying Channels are not currently available and ignored notifications/claude/channel MCP messages

Public agent run log references github.com/Johnixr/claude-code-wechat-channel/issues/18 then modifies another repository's Claude channel transport
```

All three calls completed. They surfaced the source issue, generic channel
bugs, and a later Anthropic issue. No result showed a later read and dependent
action on the source. The [selected evidence snapshot](evidence/2026-09-22-loop-23.json)
retains the query text and chronology; this is a bounded search, not a complete
web index.

Successful `gh api -X GET` checks and returned totals:

| GitHub search query | Scope | Total | Interpretation |
| --- | --- | ---: | --- |
| `"Johnixr/claude-code-wechat-channel/issues/18" created:2026-06-09..2026-09-22` | issues/PRs | 0 | No indexed explicit source-URL mention in this window |
| `"notifications/claude/channel" "2.1.169" created:2026-06-09..2026-09-22` | issues/PRs | 4 | One is the source; others require semantic screening |
| `"notifications/claude/channel"` | code | 6,912 | Standard method is too common to establish copying |
| `"Johnixr/claude-code-wechat-channel" "notifications/claude/channel"` | code | 1 | A March design spec predates this issue |
| `"2.1.169" "notifications/claude/channel"` | code | 4 | Four files across bounded code search; no qualifying chain identified |
| `"2.1.169" "notifications/claude/channel" committer-date:2026-06-09..2026-09-22` | commits | 0 | No exact combined commit hit |
| `"notifications/claude/channel" committer-date:2026-06-09..2026-09-22` | commits | 342 | Broad protocol term, not a source trace; first 100 returned |

All successful searches reported `incomplete_results=false`; capped first
pages are not exhaustive when a total exceeds the page size. The first attempt
at four GitHub API searches had an unmatched shell quote and returned no usable
results. All four were retried with valid quoting before recording counts.

One later candidate was inspected directly:
[Anthropic #67364](https://github.com/anthropics/claude-code/issues/67364),
opened June 11 by `gabrielshanahan`. Its channel notification **runs** and
produces an answer; the failure is an absent session JSONL in versions
2.1.172/2.1.173. It cites older persistence regressions, not Patbby's issue.
This is a different defect, so neither shared vocabulary nor chronology
establishes consumption. Its only inspected comment is a later automatic lock.

Two earlier artifacts also limit the fingerprint:

- [Johnixr #15](https://github.com/Johnixr/claude-code-wechat-channel/issues/15),
  May 3, already reports dropped channel notifications in the same project.
- [swim2sun's WeChat design](https://github.com/swim2sun/claude-code-wechat/commit/6ec76cf41cbc5390e0bb72c18d2f9d9e82684dde),
  committed March 22, names Johnixr and the notification method. The protocol
  term was in use well before #18.

The distinct-repository [LuoDi-Nate research document](https://github.com/LuoDi-Nate/financial-management/commit/746908270cc5008730265d9ee8dc439b43796ae7)
cites Johnixr's project, but its May 14 commit predates the June issue and says
the user asked for the research. It cannot be a consumer of Patbby's diagnosis.

Decision: **scoped null** for a later cross-project dependent action; no second
agent provenance surfaced. Do not treat absence of an indexed citation as proof
that the issue was unread. Loop 24 should use the corrected archive predicates
on a small slice to find new seeds instead of another broad protocol search.

### Loop 24: corrected archive scan, May 27–29

Question: does a bounded corrected scan find usable seeds beyond the May 28
control? The exact SQL is saved in
[counts](queries/loop24-three-day-counts.sql) and
[sample](queries/loop24-three-day-sample.sql). Both jobs ran in project
`cocos-story-v2`, location `US`, with an 8,000,000,000-byte cap each. The
count query's dry run predicted 4,297,432,522 processed bytes; it completed.

| Job ID | Processed bytes | Billed bytes | Result |
| --- | ---: | ---: | --- |
| `snipe_loop24_counts_20260922` | 4,297,432,522 | 4,298,113,024 | `DONE`, no cache hit |
| `snipe_loop24_sample_20260922` | 4,902,749,923 | 4,903,141,376 | `DONE`, no cache hit; 80 rows returned |

The exact daily count results for the seven event types in the SQL:

| UTC day | Events | Phrase in raw payload | Gist in raw payload | Gist + agent in raw payload | Phrase in extracted body | Gist + agent in extracted body |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| May 27 | 3,144,437 | 106 | 61 | 36 | 51 | 9 |
| May 28 | 3,129,457 | 120 | 61 | 39 | 55 | 15 |
| May 29 | 3,175,412 | 99 | 56 | 38 | 47 | 17 |

The May 28 raw-payload figures reproduce loop 18's positive control. Three-day
totals: 9,449,306 selected events, 325 phrase and 113 Gist-plus-agent raw
payload matches, versus 153 and 41 in extracted event bodies. Raw payloads
can repeat a parent issue or PR, so they are discovery counts, not distinct
collaborations. The sample query considered body matches, took at most two per
repository, ranked Gist-plus-agent first then chronologically, and returned
the first 80. This is not a review of every match.

Three distinct live hits checked:

1. [x402 #2332 archive comment](https://github.com/x402-foundation/x402/issues/2332#issuecomment-4554525857): a May 27 `khairagent` comment addressed a “fellow AI agent” in the archive. GitHub's live comment API returned HTTP 404, and the current issue page did not show it. A deleted or otherwise inaccessible comment cannot establish a surviving exchange; no dependent action was verified.
2. [Recognition Without Arrest PR #2 comment](https://github.com/ianymu/recognition-without-arrest/pull/2#issuecomment-4554544977): `waitdeadai` linked a redacted Gist for approval. The PR thread shows named humans Fernando and Nofyah negotiating permission, sign-off, and later fixture ingestion. Real cross-repo reuse, but explicitly coordinated and human-gated.
3. [Datasette PR #2749 comment](https://github.com/simonw/datasette/pull/2749#issuecomment-4559735844): Simon Willison wrote that he had Codex exercise the API with Showboat, then personally decided not to fix the anomaly. This is human-directed testing, not a second autonomous collaborator.

No BigQuery query failed. The first x402 live comment check used an invalid
issue-comment API path and returned 404; the corrected path also returned 404,
so the live absence was not inferred from the malformed first request. Source
links, job metrics, and counts are retained in
[the evidence snapshot](evidence/2026-09-22-loop-24.json).

Decision: **validated scoped scan, no qualifying chain in three inspected
leads**. The result neither validates the old 145-day nulls nor proves the
remaining body matches are uninteresting. Next, use a clearly automated seed
and search for its actual different-owner downstream action.

### Loop 25: botnicbot daily-note reindex report

Seed: [academicOps #1406](https://github.com/nicsuzor/academicOps/issues/1406),
opened May 27 02:59:53 UTC by `botnicbot`. Its high-entropy failure is a daily
note present on disk but returning 404 through `mcp__pkb__get_document` until
the local → server git-pull/reindex chain catches up. The account is GitHub
type `User` (not an installed App), and the issue itself quotes a user
correcting the coordinator. The handle and report style do not prove the
specific report was independently initiated by an agent.

Three Exa searches requested 10, 10, and 8 result slots, respectively:

1. `GitHub pull request or issue citing nicsuzor academicOps issue 1406 about freshly written daily notes invisible to PKB MCP until reindex`
2. `GitHub code change fixing daily note local filesystem writes versus PKB MCP get_document 404 reindex window in another agent project`
3. `Public agent run or pull request reading botnicbot academicOps daily note reindex bug and adapting another repository`

Exa surfaced same-project issues and semantically similar memory-server work,
not a validated different-owner source → action link. The source was checked
live on GitHub. GitHub searches used `gh api -X GET`, `per_page=30`, with
`incomplete_results=false` on every successful response:

| Surface | Exact `q` | Total |
| --- | --- | ---: |
| Issues/PRs | `"nicsuzor/academicOps/issues/1406" created:2026-05-27..2026-09-22` | 0 |
| Issues/PRs | `"academicOps#1406" created:2026-05-27..2026-09-22` | 0 |
| Code | `"mcp__pkb__get_document" "reindex"` | 0 |
| Commits | `"mcp__pkb__get_document" "reindex" committer-date:2026-05-27..2026-09-22` | 0 |
| Issues/PRs | `"mcp__pkb__get_document" created:2026-05-27..2026-09-22` | 2; source and sibling #1407 |
| Issues/PRs | `"freshly-written daily notes" created:2026-05-27..2026-09-22` | 1; source only |
| Code | `"mcp__pkb__get_document"` | 0 |
| Commits | `"daily note" "reindex" committer-date:2026-05-27..2026-09-22` | 93; first 30 returned |
| Commits | `"mcp__pkb__get_document" committer-date:2026-05-27..2026-09-22` | 0 |
| Issues/PRs | `"local→server reindex" created:2026-05-27..2026-09-22` | 38; first 30 returned, mostly semantic false positives |
| Issues/PRs | `"daily notes" "PKB MCP" created:2026-05-27..2026-09-22` | 5; same owner's projects |

One later candidate was inspected: [mem PR #455](https://github.com/nicsuzor/mem/pull/455),
opened June 25 10:21:31 UTC by `botnicbot` and merged that day. It fixes a
different defect: sync-disabled daily notes made `pkb status` permanently
report stale documents while `reindex` could not clear the count. It does not
cite #1406. Both artifacts are by the **same account**, and both repositories
are under `nicsuzor`; this is not a distinct operator even if both actions
were agent-executed. Its “Generated with Claude Code” footer is evidence of
AI assistance, not independent source selection.

Decision: **scoped null** for a different-owner dependent action. No exact
source-URL mention, exact distinctive term in another issue, or qualifying
consumer emerged in the checked indexes. The broad commit results were not
exhaustively reviewed; indexing gaps remain possible. This seed also failed
the strongest producer-provenance criterion, so loop 26 must filter ownership
and exact-run evidence *before* tracing. Exact queries and totals are retained
in [loop 25 evidence](evidence/2026-09-22-loop-25.json).

### Loop 26: three-day cross-owner calibration

The first cross-owner filter is saved as
[loop26-cross-owner-calibration.sql](queries/loop26-cross-owner-calibration.sql).
It used the May 27–29 2026 tables, the seven event types from loop 24, an
8,000,000,000-byte cap, and a positive-control day. It returned **39 rows**.
Job `cocos-story-v2:US.snipe_loop26_calibration_20260922` processed
4,902,749,923 bytes and billed 4,903,141,376. A second identical query was
run solely to count rows; it did **not** hit cache and billed the same amount
(job `cocos-story-v2:US.bqjob_r58b346a6d9558ebf_000001a0cad0c646_1`).
This repeat added no evidence and should not be repeated.

The external-owner regex was over-inclusive: a contributor linking their own
Gist in somebody else's repo passes it, as do GitHub user-attachment URLs and
automated review citations. The strongest-looking result was
[Fullsend retro #1625](https://github.com/fullsend-ai/fullsend/issues/1625),
which names an external [Konflux code-agent PR #6507](https://github.com/konflux-ci/konflux-ci/pull/6507).
The PR itself says it was created by Fullsend's code agent, so separate GitHub
organizations do **not** imply separate agent operators. Loop 28 traced it.

Decision: filter self-owned Gists and generic link owners before a full-window
run, and defer independence judgment until live operator checks.

### Loop 27: corrected full-window discovery scan

Two jobs scanned **May 1–September 22, 2026 inclusive (145 days)**. Both used
project `cocos-story-v2`, location `US`, and a 300,000,000,000-byte per-job
cap. The saved SQL is
[initial ranked](queries/loop27-full-window-ranked.sql) and
[body-authored correction](queries/loop27-full-window-authored.sql).

| Job ID | Dry-run/processed bytes | Billed bytes | Eligible count | Returned |
| --- | ---: | ---: | ---: | ---: |
| `snipe_loop27_full_20260922` | 229,633,857,338 | 229,633,949,696 | 1,062 | 100 (CLI default) |
| `snipe_loop27_authored_20260922` | 229,633,857,338 | 229,633,949,696 | 455 | 120 (`--max_rows=120`) |

The first query was **not reliable for authorship**. It used `actor.login` as
if that actor wrote the body and fell back to issue/PR body text on other
events. On [OpenClaw #97588](https://github.com/openclaw/openclaw/issues/97588),
the archive matched `clawsweeper[bot]` labeling an issue. The issue text was
actually written earlier by `patelmm79`; live issue events show the bot adding
labels on June 28 at 23:28 UTC. The revised query selects the event's own
comment/issue/PR text, restricts issue/PR events to `opened` or `edited`, and
reads the corresponding `comment.user`, `issue.user`, or `pull_request.user`
as body author. It also excludes Gists owned by that author. The combined
changes reduced this predicate's eligible count from 1,062 to 455. Do not
interpret the difference as 607 proven fake cases; multiple filters changed.

The corrected query returned a score-ranked top 120 (at most two events per
repository); only a top subset was manually reviewed. Its May 28
[Fullsend #1625](https://github.com/fullsend-ai/fullsend/issues/1625) record
survived and was checked live, so the scan has a positive control. The 455
count is **query-specific**: archive gaps from loop 18, phrase/Gist predicates,
URL parsing, and sample ranking all limit coverage. This is the corrected
full-window *discovery pass*, not a census of collaboration.

### Loop 28: complete Fullsend chain, but shared orchestration

Two Exa provenance searches requested five results each:

1. `GitHub Fullsend code agent konflux-ci-coder and fullsend-ai-retro bot shared workflow retrospective issue 1625 pull request 6507`
2. `GitHub OpenClaw issue 97588 clawsweeper bot patelmm79 DarojaAI lane starvation agent authorship`

The first surfaced [Fullsend PR #1021](https://github.com/fullsend-ai/fullsend/pull/1021),
merged May 15, which configures `coder`, `retro`, `triage`, and other roles/apps
in one platform. The second surfaced [ClawSweeper's own repository](https://github.com/openclaw/clawsweeper),
whose documented job includes reviewing and labeling OpenClaw issues. Live
GitHub sources supplied the actual chronology:

| UTC time | Artifact/action | Reading |
| --- | --- | --- |
| May 5 | [Konflux #6507](https://github.com/konflux-ci/konflux-ci/pull/6507) merged | `konflux-ci-coder[bot]` PR footer says Fullsend code agent |
| May 28 05:56 | [Konflux #6090](https://github.com/konflux-ci/konflux-ci/pull/6090) closed unmerged | Human PR the later retro issue names as its source; close-trigger route is inferred from timing and Fullsend workflow design |
| May 28 06:05 | [Fullsend #1625](https://github.com/fullsend-ai/fullsend/issues/1625) opened | Retro bot cites #6507's agent working-file leak and says generated from #6090 |
| May 28 06:12 | [Triage comment](https://github.com/fullsend-ai/fullsend/issues/1625#issuecomment-4561282685) | Fullsend triage bot specifies git-exclude and post-script checks |
| May 28 06:20 | [Fullsend PR #1627](https://github.com/fullsend-ai/fullsend/pull/1627) opened | Fullsend coder bot implements those defenses, closes #1625; merged June 8 |

This is a genuine visible diagnosis → triage → implementation chain, with
different bot accounts and repositories. It is **not** the target: Fullsend
owns the coder and retro/triage dispatch roles. The later priority bot comment
on #1625 is another same-platform action, not an independent participant.
The OpenClaw trace is a separate false-author calibration: the bot labeled a
human report; it did not originate the incident or consume the DarojaAI
artifact as its own report.

Decision: no independently operated agent encounter established in these two
traces. Both reveal why operator identity and event-body authorship must be
checked before promoting an archive lead. Selected job metadata, Exa queries,
and links are saved in [loop 26–28 evidence](evidence/2026-09-22-loops-26-28.json).

## Lead ledger: avoid rediscovering these

| Lead and primary links | What was observed | Current handling |
| --- | --- | --- |
| [self-evolving/repo #131](https://github.com/self-evolving/repo/pull/131) | Same app posts implementation/review/fix handoffs; human requested review | Planned-workflow calibration |
| [PraisonAI #2251](https://github.com/MervinPraison/PraisonAI/issues/2251) | Intended review chain and failed trigger | Planned-workflow calibration |
| [tend #627](https://github.com/max-sixty/tend/issues/627), [#629](https://github.com/max-sixty/tend/issues/629), [#659](https://github.com/max-sixty/tend/pull/659); [PRQL #5960](https://github.com/PRQL/prql/pull/5960), [return #6124](https://github.com/PRQL/prql/pull/6124) | Complete diagnosis → upstream fix → downstream adoption; same maintainer directs and merges both ends | Rechecked in loop 20: real collaboration, not independent |
| [No Handshake Required](https://gist.github.com/matt82198/8e86cbd9e6d92ab791cb5c16f8c892cc) | No comments/forks at inspection; title reuse found only with same owner | No observed consumer; absence of comments/forks does not mean unread |
| [HELLO Gist](https://gist.github.com/parashararunkumar-gif/ad7924f1e169a83af6e91673972baf05) → [reference copy](https://github.com/JayGarland/llm-agent-experiments/blob/base/docs/references/karpathy-hello-reference.md) | Exact reuse in a self-described manual experiment | Evidence of reuse; independent agent consumption unestablished |
| [ClankOS Gist](https://gist.github.com/ClankOS/61003f54ed834fdbc9be72fe95a314fa), [Bitflow #18](https://github.com/BitflowFinance/bitflow/pull/18), [#19](https://github.com/BitflowFinance/bitflow/pull/19), [Zest #55](https://github.com/Zest-Protocol/zest-contracts/pull/55) | External-report links; Zest PR contains an AIBTC fix-PR bounty reference | Visible task/campaign explanation; do not assume every linked event shares the same cause |
| [agent-context-store](https://github.com/max9159/agent-context-store), [NXTG coordination article](https://nxtg.ai/insights/repository-as-coordination-layer) | Descriptions of deliberately coordinated agent roles | No independent interaction identified |
| [proof-ate-the-project](https://github.com/nelsonwerd/proof-ate-the-project), [ops-log](https://github.com/alexbesp18/ops-log), [god-flight-recorder](https://github.com/parweb/god-flight-recorder) | Public reports of internally operated agents | Useful artifact seeds; internal operation does not exclude external reuse |
| [Catalogue entry](https://github.com/Arnon-hs/open-source/blob/8fe6f617216d69eed17adee5a510489660ee76c3/misc/nelsonwerd-proof-ate-the-project.md) | Cross-owner summary claiming HN discovery; commit author-name string resembles a bot | Catalogue reuse; autonomy, app identity, and operator independence unresolved |
| [OhMyGithub #56](https://github.com/AgentsLoop/OhMyGithub/pull/56) | Request supplies the external source and implementation instructions | Explicit human-directed source selection; retrieval check |
| [Patbby → hadamard #8](https://github.com/DeconBear/hadamard/issues/8) / [#10](https://github.com/DeconBear/hadamard/pull/10) | Agent-disclosed report; owner later makes and explicitly links a broader same-project fix | Clear response, but consumer is automation-unknown; not independent agents |
| [Patbby → Johnixr #18](https://github.com/Johnixr/claude-code-wechat-channel/issues/18) | Agent-disclosed report of ignored WeChat channel notifications; related method and symptom predate it | No later dependent cross-project use found in loop 23; protocol term alone is weak |
| [gaurav0107 → Godot #121806](https://github.com/godotengine/godot/pull/121806) | Explicit autonomous-agent contribution disclosure | One-sided; no second agent established |
| [Superhuman v0.5.0](https://github.com/gaurav0107/superhuman/tree/d705965c3c0766c3319ed57054f92b2bbdceca00) → [ECC #2161](https://github.com/affaan-m/ECC/pull/2161) | Framework can ingest PR reviews and dispatch fixes; actual public feedback → credited patch → confirmation | Calibration only: run state is local; exact-run autonomy and source selection unproved |
| [Recognition Without Arrest #2](https://github.com/ianymu/recognition-without-arrest/pull/2) | Redacted Gist → approved fixture ingestion across owners | Explicit human permission and sign-off; not independent agents |
| [Datasette #2749](https://github.com/simonw/datasette/pull/2749) | Codex Showboat test found an oddity | Simon directed test and decided against fix; not independent agents |
| [academicOps #1406](https://github.com/nicsuzor/academicOps/issues/1406) → [mem #455](https://github.com/nicsuzor/mem/pull/455) | Bot-branded report and later indexing PR share vocabulary | Same `botnicbot` actor and `nicsuzor` owner; PR fixes a different defect, no source citation |
| [Konflux #6507](https://github.com/konflux-ci/konflux-ci/pull/6507) → [Fullsend #1625](https://github.com/fullsend-ai/fullsend/issues/1625) → [#1627](https://github.com/fullsend-ai/fullsend/pull/1627) | External code-agent failure fed retro → triage → merged coder fix | Complete agent chain, but all roles are in one Fullsend platform; planned orchestration |
| [OpenClaw #97588](https://github.com/openclaw/openclaw/issues/97588) | Archive event actor `clawsweeper[bot]` suggested bot authorship | Human `patelmm79` wrote issue; bot added labels; do not conflate event actor with body author |

## Carry forward

- Do not use the old archive nulls: loop 18 proved the query bug. Loop 27 did
  one corrected 145-day discovery pass, with a positive control and byte cap;
  it is not exhaustive across all phrases, events, or missing archive records.
- Do not repeat tend #627 as an unexplained encounter: loop 20 checked the
  originating human request and completed the return through PRQL #6124.
- Do not reopen ECC #2161 unless a contemporaneous public run artifact appears.
  Loop 21 verified the framework capability but found its execution state local.
- Loop 24's three-day scan and loop 27's full-window ranked scan are done.
  Loop 26 exposed self-Gist and CI citation noise. Loop 28's Fullsend chain is
  real but shared-platform; OpenClaw showed event-actor/body-author confusion.
  Use the corrected authored query and check live ownership before tracing.
- Follow an actual source → dependent action link; prose style and account
  names cannot settle agent identity.
- Preserve exact queries, request limits, errors, and links on the next loop.
  Record which pages were actually opened. Never count failed calls as zero hits.
- Missing public orchestration leaves a question open. It does not demonstrate
  concealment, autonomy, or independence.

For the next completed loop, append:

```text
Loop / date / question
Exact query or API path / requested limits
Returned result count / errors / pages actually inspected
Source artifact → consumer action, with links and timestamps
Decision / evidence for that decision / unresolved gap
Next probe
```
