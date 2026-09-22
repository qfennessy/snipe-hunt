# Plan: hack for public agent-collaboration artifacts

## Target

Find odd public traces from **2026-05-01 through 2026-09-22** where one agent
leaves public state and an independently operated agent discovers and uses it.
Exclude prearranged collaboration, shared operators, and human-directed
handoffs. A workflow or human operator alone does not disqualify an encounter:
separately operated agents can discover each other through ordinary automation.
Look for evidence of a shared assignment or human relay that explains the
specific interaction. We are looking for convincing examples, not a
publication-ready study.

## Loop queue — 18–28 complete; 29 proposed

Run these in order, starting with search validation and known-agent activity.
Each loop has a 20-minute cap. Check [SEARCH_LOG.md](SEARCH_LOG.md) before
searching so we do not repeat a completed probe without a reason. Append exact
queries, limits, errors, and candidate links there; summarize findings and
remaining gaps in `RESEARCH.md`. An empty result is useful only when the search
worked. Loops 1–28 are documented. Loops 18–28 ran on 2026-09-22. The next
candidate method, loop 29, is proposed below. Results and exact queries are in
the search ledger.

### Loop 18: validate the search machinery

**Complete:** recovered the original jobs and proved both archive regexes were
over-escaped. Their zero-hit conclusions are invalid. Corrected May 28 searches
returned 120 phrase-matching events and 39 Gist-plus-agent-language events.
Known-event checks also exposed missing events and absent PR bodies. Queries
are saved in `queries/`; the full 145-day corrected discovery scan is not done.

Take three known interactions from `RESEARCH.md` and try recovering their
events by exact repository, actor, and timestamp. Compare the results with
live GitHub and the corresponding hourly GH Archive files. Check date coverage,
event types, payload fields, and query syntax before interpreting a miss.
Planned interactions are useful retrieval checks even though they do not
qualify as discoveries.

**Output:** working queries, recovered/missing events, and coverage gaps. Flag
earlier zero-hit conclusions that need rechecking; a query failure or unavailable
record is not a negative finding.

### Loop 19: follow known autonomous accounts outward

**Complete:** followed Patbby, prql-bot, and the mixed human/agent account
gaurav0107; inspected 51 search records and five shortlisted encounters. Kept
[ECC #2161](https://github.com/affaan-m/ECC/pull/2161) for its concrete review →
patch → confirmation sequence and Superhuman project attribution. Exact-run
autonomy and operator independence remain unresolved.

Choose three accounts with public operator disclosures or run logs supporting
autonomous operation. Inspect their activity in unrelated projects and identify
who responds. Check whether the disclosure applies to the candidate activity;
an account may mix human and agent actions. Trace operator relationships and
any shared assignment before judging independence.

**Output:** up to five external encounters with identity evidence, source links,
and known or unresolved operator relationships. Carry the strongest lead forward.

### Loop 20: trace an upstream bug-report round trip

**Complete:** found the missing return leg, [PRQL #6124](https://github.com/PRQL/prql/pull/6124),
and checked its actual diff. The tend/PRQL round trip is real, but the same
maintainer requested the original diagnosis, directed upstream implementation,
and merged both ends. Not independent. Also reconstructed the kept ECC #2161
feedback sequence; do not reject it merely because the reviewers are apps.

Look for A reporting a dependency problem, independently operated B diagnosing
or fixing it upstream, and A adopting the fix. Reconstruct the sequence through
issue/PR timelines, linked commits, and comments. Prioritize exchanges beginning
before a visible human instruction; inspect exactly what each human event did.

**Output:** one A → B → A chain with timestamps and dependent actions, or the
specific event that disqualifies it. Identify the missing link if incomplete.

### Loop 21: mine public execution logs for discovery

**Complete:** Superhuman v0.5.0 predates ECC #2161 and already defines a
`resolve-comments` role that reads public PR feedback and dispatches fixes. But
the release keeps telemetry, contribution state, outcomes, and run summaries
under the operator's local `~/.superhuman/`; no public run ties #2078 selection
or the #2161 review fix to an autonomous invocation. The later public
attribution feature cannot be applied retroactively to June. Keep the PR as an
agent-attributed outcome, not a verified independent encounter.

Find published agent transcripts or run logs showing a search or fetch of an
external artifact followed by a consequential decision or implementation change.
Trace how the URL entered the run: search result, user instruction, or configured
task. Investigate the artifact's author and the operators of both sides.

**Output:** one directly observed read → action sequence with public log and
artifact links, discovery route, and supported authorship. Reading alone is
not evidence that the artifact affected the action.

### Loop 22: follow unusual errors and corrections

**Complete:** used Patbby's disclosed-agent report of the
`ActoviqBridgeSession` race. A distinct owner later fixed it and explicitly
linked the fix to the report, but the action remains in the original Hadamard
project. The owner has AI coauthor trailers, not public proof of an autonomous
second agent. Good calibration for source → response; not independent agents.

Pick an agent-attributed artifact containing a distinctive existing mistake:
an odd identifier, wrong constant, or faulty example. Search for the same
peculiarity elsewhere, then check whether another actor corrected it and whether
the correction travelled back. Check chronology and a possible common source.
Observe existing artifacts; this loop does not publish or plant anything.

**Output:** a transfer-and-correction trail, or a specific missing edge. Shared
errors support dependence; agent identity and independence need separate evidence.

### Loop 23: trace public bot-to-bot consumption through a distinct reproduction

**Complete:** Patbby's [WeChat channel issue #18](https://github.com/Johnixr/claude-code-wechat-channel/issues/18)
had a precise version and notification failure. No later issue or PR in the
bounded search cited its URL. The closest later issue concerned session
transcripts after successful notifications, a different bug. The notification
method and a similar channel-drop report both predate Patbby's issue. No
independent consumer emerged; see the loop 23 ledger entry.

Method tested: start with an agent-authored, open-ended bug report or benchmark
outside the target repository. Search for a later, different-owner PR or issue
that reuses its distinctive reproduction/test rather than merely solving the
same broad problem. Verify the second actor has specific automation provenance.
Reject same-project maintainer fixes, forks, bounties, and generic semantic
similarity. One seed and one candidate maximum in 20 minutes.

**Output:** a public producer artifact → distinct consumer reproduction/fix
chain, including automation provenance for both accounts; otherwise a precise
null that distinguishes no reuse from unknown consumer identity.

### Loop 24: correct the archive discovery scan in a bounded slice

**Complete:** the corrected May 27–29 scan reproduced the May 28 positive
control and found 325 raw-payload phrase matches plus 113 raw-payload
Gist-plus-agent matches. Event-body counts were lower (153 and 41). Three
live checks produced no independent-agent chain: an unavailable comment, an
explicitly permission-gated human handoff, and a human-directed Codex test.
The full-window scan was pending at this point and was completed in loop 27;
see the loop 24 ledger and saved SQL.

The old archive scans over 145 days were invalidated in loop 18.
Run the corrected phrase and Gist-plus-agent predicates over one 72-hour slice,
with a byte cap and the existing positive control. Inspect at most three hits
on live GitHub, prioritizing distinct actors and a visible dependent action.
Log the actual SQL, job ID, bytes, hit count, and source links. If a day lacks
expected events, use GitHub directly rather than interpreting its null.

**Output:** up to three new candidate chains, or a validated scoped null. Do
not turn the three-day result into a claim about the full 145-day window.

### Loop 25: turn an automated issue into a cross-owner dependency trace

**Complete, scoped null:** seeded on `botnicbot`'s academicOps #1406. No
different-owner consumer surfaced in exact-phrase searches. The closest
later mem PR #455 was by the same account under the same owner, fixed a
different indexing defect, and did not cite #1406. The issue itself records
a user correction, so exact-run autonomous source selection is not proven.

Seed on one clearly automated, externally visible report from
the loop 24 body-match set, not on generic agent vocabulary. Search for a
later, different-owner artifact that cites its URL or reproduces a distinctive
technical detail. Inspect the first concrete dependent action and the second
actor's run provenance. Stop after one seed and one consumer candidate or 20
minutes. If the source is a scheduled internal task, treat that as producer
provenance only; the target is a separately operated consumer.

**Output:** one source → consequential external action chain with both agents'
provenance, or a bounded null with the exact missing edge. A citation without
an action does not qualify.

### Loop 26: filter archive seeds for cross-owner reach before tracing

**Complete:** 39 three-day matches after a first cross-owner link filter.
Many were self-owned Gists, review citations, or automation. Fullsend #1625
looked cross-owner but the apparent external coder and retro bot belong to one
Fullsend platform. The first filter was useful for locating leads, not judging
independence. Exact SQL and job records are in the ledger.

In the already validated May 27–29 body-match slice, rank
agent-authored artifacts that link to another owner's repository, issue, or
Gist. Exclude same-owner and generic bot CI reports before opening a seed.
Pick one source with a distinctive claim and a plausible external audience;
then check one later downstream action. Spend at most 20 minutes. Verify
exact-run producer provenance before treating the artifact as agent-authored.

**Output:** one high-signal source/consumer pair with ownership and action
checks, or a bounded explanation of why this slice has no suitable seed.

### Loop 27: run the capped full-window scan with body authorship

**Complete:** two 229.6-GB BigQuery passes over the full May 1–September 22
window. The initial ranker produced 1,062 eligible events but confused event
actors with body authors and allowed parent-text repetition. The corrected
ranker produced 455 eligible events and returned the top 120. These are
query-specific leads, not 455 collaborations. May 28's known Fullsend event
survived as a positive control; archive gaps still apply.

**Output:** saved SQL, job IDs, bytes, correction, and ranked sample in the
search ledger. Do not use the initial 1,062 count as agent-authored evidence.

### Loop 28: trace the strongest public chain and a false-author check

**Complete:** Konflux #6507 → Fullsend retro #1625 → triage comment → coder
PR #1627 is a real public chain with a later merged fix. Fullsend's own May 15
dispatch change defines coder, retro, and triage as roles in one platform, so
this is planned internal agent work, not independent discovery. An OpenClaw
issue initially appeared bot-authored because ClawSweeper labeled a human
issue; live issue events disproved that attribution.

**Output:** linked chronology, shared-platform proof, and body-author caveat
in `RESEARCH.md` and `SEARCH_LOG.md`.

### Loop 29: join two independently operated artifacts by exact reuse

**Proposed:** from the corrected 455-event pool, exclude known platform
orchestration, automatic review citations, and digests. Select one artifact
with a public author/run trace and search for a later different-operator
commit, PR, or run log that reproduces its distinctive non-generic detail.
Verify the second action changed code or state and that no shared task route
explains it. One source and one candidate maximum, 20 minutes.

**Output:** a source → action trace with separate operator evidence, or the
precise missing link. Do not infer consumption from a citation alone.

### Retrieval backlog

The old full-window archive nulls must not narrow the hunt. Loop 27 completed
one corrected full-window discovery scan with a positive control and byte cap;
it did **not** search every possible expression of collaboration. Archive gaps
mean live GitHub remains necessary.

## 1. Run a 20-minute discovery loop

Do not schedule week-long batches. Each task gets 20 minutes and has one
concrete question—for example: “Did two accounts use `HANDOFF.md` in the same
repository during the target period?” Search the text-bearing activity types:

```text
IssueCommentEvent
IssuesEvent
PullRequestEvent
PullRequestReviewCommentEvent
PushEvent
ReleaseEvent
GollumEvent
```

Search one phrase combination or filename family across the full target period,
then immediately inspect the best results. For every hit, save the repo, actor,
timestamp, event URL/ID, and matching text. Prioritize a second, unrelated
account taking a dependent action, including across repositories or platforms.
Start with a 72-hour window, then expand when a direct link points further out.

Suggested timebox:

1. **0–3 min:** choose one phrase/filename family and write the query.
2. **3–10 min:** run it against GH Archive and pick at most three candidates.
3. **10–16 min:** inspect the best candidate on live GitHub.
4. **16–19 min:** check one archive source if live evidence is missing.
5. **19–20 min:** log the result, reject it, or write the next exact query.

The next 20-minute task should follow the evidence, not a preassigned calendar
slice: expand a strong repository, try a related phrase, or move to a different
artifact family. Prefer public artifacts without an explicit recipient over
task queues, agent frameworks, and configured review chains.

## 2. Chase the best leads on GitHub

For the top one to three candidates from the current 20-minute loop, check:

- commits and blame around the suspicious file;
- issues, PRs, comments, discussions, releases, and forks;
- whether a second account used the message, followed an instruction, or added
  a result for the next person/agent.

Reject when a shared operator, assignment, dispatcher, task queue, workflow
route, or human instruction explains the handoff. Shared app software or an
organization name warrants inspection; neither alone establishes a shared
operator. Different bot names alone do not make the agents independent.
Independently operated workflows remain eligible when the encounter was not
prearranged. A human comment matters when it directs the dependent action.

Handy current-search starting points:

```text
"future agents" path:/(README|TASKS|STATUS|HANDOFF)\.md$/
"another agent" ("append" OR "preserve" OR "claim")
"next agent" ("result" OR "task" OR "handoff")
path:/^FLAGS\.md$/
path:/(mailbox|handoff|shared_state|coordination)/
```

## 3. Recover anything that vanished

When a good GitHub lead is gone or incomplete, try its exact URL and raw-file
URL in Software Heritage, Wayback, Common Crawl, forks, and mirrors. Save the
best copy plus a screenshot/text dump, URL, time, and hash. Do not spend time
on broad archive fishing without a specific candidate.

For an unaddressed artifact, take one unusual 8–15 word fragment and search for
it verbatim in GitHub code, issues, PRs, Gists, archives, and the web. A reuse
hit from a different owner is the pivot; an artifact with no consumer is only a
lead, not a case.

Before treating a reuse as a candidate, read the target repository description,
file path, commit message, surrounding docs, and any source citation. Names
such as `reference`, `example`, `benchmark`, or `experiment` warrant a curation
check. A citation or fork link can establish the source-consumer connection;
it does not by itself prove a human selected the source. Reject when the
timeline shows human curation or a prearranged experiment.

Do not use generic terms such as `future agents`, `handoff`, `claim`, or
`AGENTS.md` as standalone searches. They overwhelmingly return designed agent
systems. Use them only to find an artifact, then search a high-entropy fragment
from that artifact for the consumer.

Deprioritize routine dependency updates and catalogue syncs unless they expose
a substantive external interaction. A `github-actions` author can front many
kinds of work; inspect the trigger and action before rejecting it. An agent
working only in its own repository may still consume another agent's external
artifact. Prioritize that dependency over model labels or bot usernames.

Treat missing workflow files, missing comments, anonymous commit attribution,
or a GitHub App with an opaque backend as **negative evidence only**. It leaves
the coordination route unresolved and cannot prove hidden autonomy or
collaboration. Label a cross-owner action `independent public discovery,
non-collaborative` when the consumer merely indexes, mirrors, summarizes, or
scores an artifact. Promote it only when the consumer’s specific next action
depends on the producer’s substantive result.

Do not call a normal GitHub account an agent because its prose, timing, or
commit volume feels machine-like. That is an **unattributed action**. Use
**unattributed automation** only when automation is independently visible but
its operator/model is not. Both remain identity-unknown until there is public
provenance; neither is collaboration evidence without a substantive
artifact-to-action dependency.

## 4. Use Exa to branch out

Feed Exa the unusual phrase, repo name, account name, filename, or a redacted
snippet from a strong candidate. Look for copies, related artifacts, and other
examples with the same behavior. Always open the underlying page before treating
an Exa result as real.

## 5. Decide quickly

- **Interesting:** one suspicious, unaddressed public artifact.
- **Probably real:** an unrelated account takes a specific dependent action,
  with no visible shared assignment or human-directed handoff.
- **Good enough:** the second account clearly reacts to or uses the first
  agent's work, and the evidence supports separate operation without a shared
  assignment or human-directed handoff explaining the encounter.

Reject ordinary team workflows, obvious templates, and bot spam. Do not guess
which model wrote something unless a report, log, or account provenance makes it
plain.

## 6. Keep the output lightweight

For each worthwhile case, keep a short note:

```text
repo / accounts / dates
what A left
what B did next
links and saved copies
why it looks like collaboration
what might make it mundane instead
```

Make a one-page running findings table with the three labels above. Include
dead ends so the next 20-minute loop starts from real state instead of memory.

The first useful calibration pattern was an upstream issue opened by one bot
account after a real downstream failure, then answered by a different bot
account. It is still a reject because a human explicitly directed the follow-on
work. Prefer cross-boundary encounters with no visible human-directed handoff
or shared assignment. Reassess individual earlier exchanges under the corrected
filter rather than treating a later human instruction as explaining every event.

## Safety

Public, passive research only. If a hit exposes credentials, do not test or
retain them—redact and record only enough context to explain the artifact.
